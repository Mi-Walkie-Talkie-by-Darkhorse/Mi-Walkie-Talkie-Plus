package android.support.design.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import android.support.v4.util.SimpleArrayMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

final class DirectedAcyclicGraph<T> {
    private final SimpleArrayMap<T, ArrayList<T>> mGraph = new SimpleArrayMap<>();
    private final Pool<ArrayList<T>> mListPool = new SimplePool(10);
    private final ArrayList<T> mSortResult = new ArrayList<>();
    private final HashSet<T> mSortTmpMarked = new HashSet<>();

    DirectedAcyclicGraph() {
    }

    /* access modifiers changed from: 0000 */
    public void addNode(@NonNull T t) {
        if (!this.mGraph.containsKey(t)) {
            this.mGraph.put(t, null);
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean contains(@NonNull T t) {
        return this.mGraph.containsKey(t);
    }

    /* access modifiers changed from: 0000 */
    public void addEdge(@NonNull T t, @NonNull T t2) {
        if (!this.mGraph.containsKey(t) || !this.mGraph.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList arrayList = (ArrayList) this.mGraph.get(t);
        if (arrayList == null) {
            arrayList = getEmptyList();
            this.mGraph.put(t, arrayList);
        }
        arrayList.add(t2);
    }

    /* access modifiers changed from: 0000 */
    @Nullable
    public List getIncomingEdges(@NonNull T t) {
        return (List) this.mGraph.get(t);
    }

    /* access modifiers changed from: 0000 */
    @Nullable
    public List getOutgoingEdges(@NonNull T t) {
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        int size = this.mGraph.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList3 = (ArrayList) this.mGraph.valueAt(i);
            if (arrayList3 != null && arrayList3.contains(t)) {
                if (arrayList2 == null) {
                    arrayList = new ArrayList();
                } else {
                    arrayList = arrayList2;
                }
                arrayList.add(this.mGraph.keyAt(i));
                arrayList2 = arrayList;
            }
        }
        return arrayList2;
    }

    /* access modifiers changed from: 0000 */
    public boolean hasOutgoingEdges(@NonNull T t) {
        int size = this.mGraph.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) this.mGraph.valueAt(i);
            if (arrayList != null && arrayList.contains(t)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public void clear() {
        int size = this.mGraph.size();
        for (int i = 0; i < size; i++) {
            ArrayList arrayList = (ArrayList) this.mGraph.valueAt(i);
            if (arrayList != null) {
                poolList(arrayList);
            }
        }
        this.mGraph.clear();
    }

    /* access modifiers changed from: 0000 */
    @NonNull
    public ArrayList<T> getSortedList() {
        this.mSortResult.clear();
        this.mSortTmpMarked.clear();
        int size = this.mGraph.size();
        for (int i = 0; i < size; i++) {
            dfs(this.mGraph.keyAt(i), this.mSortResult, this.mSortTmpMarked);
        }
        return this.mSortResult;
    }

    private void dfs(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (hashSet.contains(t)) {
                throw new RuntimeException("This graph contains cyclic dependencies");
            }
            hashSet.add(t);
            ArrayList arrayList2 = (ArrayList) this.mGraph.get(t);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    dfs(arrayList2.get(i), arrayList, hashSet);
                }
            }
            hashSet.remove(t);
            arrayList.add(t);
        }
    }

    /* access modifiers changed from: 0000 */
    public int size() {
        return this.mGraph.size();
    }

    @NonNull
    private ArrayList<T> getEmptyList() {
        ArrayList<T> arrayList = (ArrayList) this.mListPool.acquire();
        if (arrayList == null) {
            return new ArrayList<>();
        }
        return arrayList;
    }

    private void poolList(@NonNull ArrayList<T> arrayList) {
        arrayList.clear();
        this.mListPool.release(arrayList);
    }
}
