"""
OPTIMIZED exhaustive independence test.
Pre-compute membership, use set operations, skip early.
"""
import math, time

def powerset_list(s):
    s = list(s)
    return [frozenset(s[j] for j in range(len(s)) if i & (1 << j)) for i in range(2**len(s))]

def build_Vn(n):
    if n == 0:
        return [frozenset()]
    prev = build_Vn(n - 1)
    return list(set(frozenset(sub) for sub in powerset_list(prev)))

def label(s, d=0):
    if d > 4: return "..."
    if len(s) == 0: return "∅"
    return "{" + ",".join(sorted(label(x, d+1) for x in s)) + "}"

# Build V3
V3 = build_Vn(3)
V3.sort(key=lambda s: (len(s), str(s)))
n_V3 = len(V3)
idx = {s: i for i, s in enumerate(V3)}
empty = frozenset()

print(f"V_3 has {n_V3} elements. Testing all {2**n_V3 - 1:,} non-empty subdomains.")
print()

# Precompute: for each element, which elements contain it
contained_in = [0] * n_V3  # bitmask: element j is contained in elements with bit set
for i in range(n_V3):
    for j in range(n_V3):
        if V3[i] in V3[j]:
            contained_in[i] |= (1 << j)

# Precompute: members of each element (as bitmask of V3 indices)
members_of = [0] * n_V3
for i in range(n_V3):
    for j in range(n_V3):
        if V3[j] in V3[i]:
            members_of[i] |= (1 << j)

# Precompute: for each pair (i,j), what is the pair set {V3[i], V3[j]}?
pair_idx = {}
for i in range(n_V3):
    for j in range(i, n_V3):
        p = frozenset({V3[i], V3[j]})
        if p in idx:
            pair_idx[(i,j)] = idx[p]
            pair_idx[(j,i)] = idx[p]

# Precompute: successor of each element
succ_idx = {}
for i in range(n_V3):
    s = frozenset(set(V3[i]) | {V3[i]})
    if s in idx:
        succ_idx[i] = idx[s]

# Precompute: union of each element (as a set)
union_of = {}
for i in range(n_V3):
    u = frozenset().union(*(m for m in V3[i] if m in idx))
    # Collect all members-of-members
    u_members = set()
    for m in V3[i]:
        if m in idx:
            for mm in m:
                if mm in idx:
                    u_members.add(idx[mm])
    # The union set itself
    u_set = frozenset(mm_orig for mm_orig in (V3[mi] for mi in u_members))
    if u_set in idx:
        union_of[i] = idx[u_set]

# Precompute: empty set index
empty_idx = idx[empty]

# Precompute: for separation, {x in A : x = empty} and {x in A : x != empty}
# These are just A ∩ {empty} and A \ {empty}
sep_empty = {}
sep_nonempty = {}
for i in range(n_V3):
    s1 = frozenset(x for x in V3[i] if x == empty)
    s2 = frozenset(x for x in V3[i] if x != empty)
    sep_empty[i] = idx.get(s1)
    sep_nonempty[i] = idx.get(s2)

def check_all_fast(mask):
    """Check all axioms for domain given by bitmask. Returns tuple of bools."""
    # Get domain info
    dom_indices = [i for i in range(n_V3) if mask & (1 << i)]
    if not dom_indices:
        return None
    
    n_M = max(len(V3[i]) for i in dom_indices)
    
    # Interior: element i is interior if contained_in[i] & mask != 0
    # (some element in domain contains i)
    interior_mask = 0
    for i in dom_indices:
        if contained_in[i] & mask:
            interior_mask |= (1 << i)
    
    int_indices = [i for i in dom_indices if interior_mask & (1 << i)]
    
    # Scope: elements with |V3[i]| <= n_M
    scope = [i for i in dom_indices if len(V3[i]) <= n_M]
    scope_mask = sum(1 << i for i in scope)
    
    int_scope = [i for i in int_indices if len(V3[i]) <= n_M]
    
    # A1: no interior S contains empty and is successor-closed
    a1 = True
    for i in int_scope:
        if empty not in V3[i]:
            continue
        closed = True
        for x in V3[i]:
            if x not in idx:
                closed = False
                break
            si = succ_idx.get(idx[x])
            if si is None or V3[si] not in V3[i]:
                closed = False
                break
        if closed:
            a1 = False
            break
    
    # A2: no two distinct scope elements have same members-in-scope
    a2 = True
    for p in range(len(scope)):
        if not a2: break
        for q in range(p+1, len(scope)):
            i, j = scope[p], scope[q]
            # Same members in scope?
            same = True
            for k in scope:
                if (V3[k] in V3[i]) != (V3[k] in V3[j]):
                    same = False
                    break
            if same:
                a2 = False
                break
    
    # A3: some scope element has no members in scope
    a3 = False
    for i in scope:
        has_member = False
        for k in scope:
            if V3[k] in V3[i]:
                has_member = True
                break
        if not has_member:
            a3 = True
            break
    
    # A4: interior scope pairs exist
    a4 = True
    for ai in int_scope:
        if not a4: break
        for bi in int_scope:
            key = (ai, bi) if ai <= bi else (bi, ai)
            pi = pair_idx.get((ai, bi))
            if pi is not None and (mask & (1 << pi)):
                # Check it's THE pair in scope
                ok = True
                for k in scope:
                    in_p = V3[k] in V3[pi]
                    is_ab = (k == ai or k == bi)
                    if in_p != is_ab:
                        ok = False
                        break
                if ok:
                    continue
            # Need to find ANY P in scope acting as pair
            found = False
            for pi2 in scope:
                ok = True
                for k in scope:
                    if (V3[k] in V3[pi2]) != (k == ai or k == bi):
                        ok = False
                        break
                if ok:
                    found = True
                    break
            if not found:
                a4 = False
                break
    
    # A5: interior scope families have union in domain
    a5 = True
    for fi in int_scope:
        # Compute union members (indices in scope)
        um = set()
        for y in V3[fi]:
            if y in idx and (mask & (1 << idx[y])):
                for x in y:
                    if x in idx and (mask & (1 << idx[x])):
                        um.add(idx[x])
        # Find U in scope matching
        found = False
        for ui in scope:
            ok = True
            for k in scope:
                if (V3[k] in V3[ui]) != (k in um):
                    ok = False
                    break
            if ok:
                found = True
                break
        if not found:
            a5 = False
            break
    
    # A6: interior scope sets support successor
    a6 = True
    for ai in int_scope:
        img = set()
        ok = True
        for x in V3[ai]:
            if x not in idx:
                ok = False
                break
            xi = idx[x]
            si = succ_idx.get(xi)
            if si is None or not (mask & (1 << si)):
                ok = False
                break
            img.add(si)
        if not ok:
            continue
        img_set = frozenset(V3[i] for i in img)
        if img_set not in idx or not (mask & (1 << idx[img_set])):
            a6 = False
            break
    
    # BFT42: interior nonempty scope sets have ∈-minimal element
    bft42 = True
    for ai in int_scope:
        if V3[ai] == empty:
            continue
        found = False
        for x in V3[ai]:
            disjoint = True
            for y in x:
                if y in V3[ai]:
                    disjoint = False
                    break
            if disjoint:
                found = True
                break
        if not found:
            bft42 = False
            break
    
    # BFT43: interior scope sets below threshold have power set
    threshold = int(math.log2(n_M)) if n_M > 0 else 0
    bft43 = True
    for ai in int_scope:
        if len(V3[ai]) > threshold:
            continue
        found = False
        for pi in scope:
            ok = True
            for k in scope:
                if (V3[k] in V3[pi]) != all(z in V3[ai] for z in V3[k]):
                    ok = False
                    break
            if ok:
                found = True
                break
        if not found:
            bft43 = False
            break
    
    # BFT44: separation for "is empty" and "is not empty"
    bft44 = True
    for ai in int_scope:
        s1 = sep_empty.get(ai)
        s2 = sep_nonempty.get(ai)
        if s1 is None or not (mask & (1 << s1)):
            bft44 = False
            break
        if s2 is None or not (mask & (1 << s2)):
            bft44 = False
            break
    
    return (a1, a2, a3, a4, a5, a6, bft42, bft43, bft44)

NAMES = ["A1", "A2", "A3", "A4", "A5", "A6", "BFT42", "BFT43", "BFT44"]

witnesses = {name: None for name in NAMES}
valid_count = 0
total = 0

t0 = time.time()
for mask in range(1, 2**n_V3):
    result = check_all_fast(mask)
    if result is None:
        continue
    total += 1
    
    if all(result):
        valid_count += 1
    
    # Check single-failure
    failing = [NAMES[i] for i in range(9) if not result[i]]
    if len(failing) == 1:
        target = failing[0]
        if witnesses[target] is None:
            dom = {V3[j] for j in range(n_V3) if mask & (1 << j)}
            witnesses[target] = dom

t1 = time.time()

print(f"\nDone in {t1-t0:.1f}s. Tested {total:,} non-empty subdomains.\n")
print(f"Valid BST models: {valid_count:,} ({100*valid_count/total:.2f}%)\n")

print("INDEPENDENCE RESULTS (exhaustive over all V_3 subsets):")
print("-" * 60)
for name in NAMES:
    w = witnesses[name]
    if w:
        print(f"  {name:8s}  INDEPENDENT  |D|={len(w)}")
        for x in sorted(w, key=lambda s: (len(s), str(s))):
            mark = "int" if any(x in s for s in w) else "ceil"
            print(f"            {label(x):30s} [{mark}]")
    else:
        print(f"  {name:8s}  AUTOMATIC")

print()
auto = sum(1 for w in witnesses.values() if w is None)
indep = sum(1 for w in witnesses.values() if w is not None)
print(f"AUTOMATIC:    {auto}/9")
print(f"INDEPENDENT:  {indep}/9")
print(f"\nAFB gives you {auto} axioms/BFTs for free out of 9.")
