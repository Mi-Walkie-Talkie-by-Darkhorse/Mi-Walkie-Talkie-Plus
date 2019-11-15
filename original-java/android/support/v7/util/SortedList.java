package android.support.v7.util;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;

public class SortedList<T> {
    private static final int CAPACITY_GROWTH = 10;
    private static final int DELETION = 2;
    private static final int INSERTION = 1;
    public static final int INVALID_POSITION = -1;
    private static final int LOOKUP = 4;
    private static final int MIN_CAPACITY = 10;
    private BatchedCallback mBatchedCallback;
    private Callback mCallback;
    T[] mData;
    private int mMergedSize;
    private T[] mOldData;
    private int mOldDataSize;
    private int mOldDataStart;
    private int mSize;
    private final Class<T> mTClass;

    public static class BatchedCallback<T2> extends Callback<T2> {
        private final BatchingListUpdateCallback mBatchingListUpdateCallback = new BatchingListUpdateCallback(this.mWrappedCallback);
        final Callback<T2> mWrappedCallback;

        public BatchedCallback(Callback<T2> callback) {
            this.mWrappedCallback = callback;
        }

        public int compare(T2 t2, T2 t22) {
            return this.mWrappedCallback.compare(t2, t22);
        }

        public void onInserted(int i, int i2) {
            this.mBatchingListUpdateCallback.onInserted(i, i2);
        }

        public void onRemoved(int i, int i2) {
            this.mBatchingListUpdateCallback.onRemoved(i, i2);
        }

        public void onMoved(int i, int i2) {
            this.mBatchingListUpdateCallback.onMoved(i, i2);
        }

        public void onChanged(int i, int i2) {
            this.mBatchingListUpdateCallback.onChanged(i, i2, null);
        }

        public boolean areContentsTheSame(T2 t2, T2 t22) {
            return this.mWrappedCallback.areContentsTheSame(t2, t22);
        }

        public boolean areItemsTheSame(T2 t2, T2 t22) {
            return this.mWrappedCallback.areItemsTheSame(t2, t22);
        }

        public void dispatchLastEvent() {
            this.mBatchingListUpdateCallback.dispatchLastEvent();
        }
    }

    public static abstract class Callback<T2> implements ListUpdateCallback, Comparator<T2> {
        public abstract boolean areContentsTheSame(T2 t2, T2 t22);

        public abstract boolean areItemsTheSame(T2 t2, T2 t22);

        public abstract int compare(T2 t2, T2 t22);

        public abstract void onChanged(int i, int i2);

        public void onChanged(int i, int i2, Object obj) {
            onChanged(i, i2);
        }
    }

    public SortedList(Class<T> cls, Callback<T> callback) {
        this(cls, callback, 10);
    }

    public SortedList(Class<T> cls, Callback<T> callback, int i) {
        this.mTClass = cls;
        this.mData = (Object[]) Array.newInstance(cls, i);
        this.mCallback = callback;
        this.mSize = 0;
    }

    public int size() {
        return this.mSize;
    }

    public int add(T t) {
        throwIfMerging();
        return add(t, true);
    }

    public void addAll(T[] tArr, boolean z) {
        throwIfMerging();
        if (tArr.length != 0) {
            if (z) {
                addAllInternal(tArr);
                return;
            }
            Object[] objArr = (Object[]) Array.newInstance(this.mTClass, tArr.length);
            System.arraycopy(tArr, 0, objArr, 0, tArr.length);
            addAllInternal(objArr);
        }
    }

    public void addAll(T... tArr) {
        addAll(tArr, false);
    }

    public void addAll(Collection<T> collection) {
        addAll(collection.toArray((Object[]) Array.newInstance(this.mTClass, collection.size())), true);
    }

    private void addAllInternal(T[] tArr) {
        boolean z = !(this.mCallback instanceof BatchedCallback);
        if (z) {
            beginBatchedUpdates();
        }
        this.mOldData = this.mData;
        this.mOldDataStart = 0;
        this.mOldDataSize = this.mSize;
        Arrays.sort(tArr, this.mCallback);
        int deduplicate = deduplicate(tArr);
        if (this.mSize == 0) {
            this.mData = tArr;
            this.mSize = deduplicate;
            this.mMergedSize = deduplicate;
            this.mCallback.onInserted(0, deduplicate);
        } else {
            merge(tArr, deduplicate);
        }
        this.mOldData = null;
        if (z) {
            endBatchedUpdates();
        }
    }

    private int deduplicate(T[] tArr) {
        if (tArr.length == 0) {
            throw new IllegalArgumentException("Input array must be non-empty");
        }
        int i = 0;
        int i2 = 1;
        for (int i3 = 1; i3 < tArr.length; i3++) {
            T t = tArr[i3];
            int compare = this.mCallback.compare(tArr[i], t);
            if (compare > 0) {
                throw new IllegalArgumentException("Input must be sorted in ascending order.");
            }
            if (compare == 0) {
                int findSameItem = findSameItem(t, tArr, i, i2);
                if (findSameItem != -1) {
                    tArr[findSameItem] = t;
                } else {
                    if (i2 != i3) {
                        tArr[i2] = t;
                    }
                    i2++;
                }
            } else {
                if (i2 != i3) {
                    tArr[i2] = t;
                }
                i = i2;
                i2++;
            }
        }
        return i2;
    }

    private int findSameItem(T t, T[] tArr, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (this.mCallback.areItemsTheSame(tArr[i3], t)) {
                return i3;
            }
        }
        return -1;
    }

    private void merge(T[] tArr, int i) {
        this.mData = (Object[]) Array.newInstance(this.mTClass, this.mSize + i + 10);
        this.mMergedSize = 0;
        int i2 = 0;
        while (true) {
            if (this.mOldDataStart >= this.mOldDataSize && i2 >= i) {
                return;
            }
            if (this.mOldDataStart == this.mOldDataSize) {
                int i3 = i - i2;
                System.arraycopy(tArr, i2, this.mData, this.mMergedSize, i3);
                this.mMergedSize += i3;
                this.mSize += i3;
                this.mCallback.onInserted(this.mMergedSize - i3, i3);
                return;
            } else if (i2 == i) {
                int i4 = this.mOldDataSize - this.mOldDataStart;
                System.arraycopy(this.mOldData, this.mOldDataStart, this.mData, this.mMergedSize, i4);
                this.mMergedSize = i4 + this.mMergedSize;
                return;
            } else {
                T t = this.mOldData[this.mOldDataStart];
                T t2 = tArr[i2];
                int compare = this.mCallback.compare(t, t2);
                if (compare > 0) {
                    T[] tArr2 = this.mData;
                    int i5 = this.mMergedSize;
                    this.mMergedSize = i5 + 1;
                    tArr2[i5] = t2;
                    this.mSize++;
                    i2++;
                    this.mCallback.onInserted(this.mMergedSize - 1, 1);
                } else if (compare != 0 || !this.mCallback.areItemsTheSame(t, t2)) {
                    T[] tArr3 = this.mData;
                    int i6 = this.mMergedSize;
                    this.mMergedSize = i6 + 1;
                    tArr3[i6] = t;
                    this.mOldDataStart++;
                } else {
                    T[] tArr4 = this.mData;
                    int i7 = this.mMergedSize;
                    this.mMergedSize = i7 + 1;
                    tArr4[i7] = t2;
                    i2++;
                    this.mOldDataStart++;
                    if (!this.mCallback.areContentsTheSame(t, t2)) {
                        this.mCallback.onChanged(this.mMergedSize - 1, 1);
                    }
                }
            }
        }
    }

    private void throwIfMerging() {
        if (this.mOldData != null) {
            throw new IllegalStateException("Cannot call this method from within addAll");
        }
    }

    public void beginBatchedUpdates() {
        throwIfMerging();
        if (!(this.mCallback instanceof BatchedCallback)) {
            if (this.mBatchedCallback == null) {
                this.mBatchedCallback = new BatchedCallback(this.mCallback);
            }
            this.mCallback = this.mBatchedCallback;
        }
    }

    public void endBatchedUpdates() {
        throwIfMerging();
        if (this.mCallback instanceof BatchedCallback) {
            ((BatchedCallback) this.mCallback).dispatchLastEvent();
        }
        if (this.mCallback == this.mBatchedCallback) {
            this.mCallback = this.mBatchedCallback.mWrappedCallback;
        }
    }

    private int add(T t, boolean z) {
        int i = 0;
        int findIndexOf = findIndexOf(t, this.mData, 0, this.mSize, 1);
        if (findIndexOf != -1) {
            if (findIndexOf < this.mSize) {
                T t2 = this.mData[findIndexOf];
                if (this.mCallback.areItemsTheSame(t2, t)) {
                    if (this.mCallback.areContentsTheSame(t2, t)) {
                        this.mData[findIndexOf] = t;
                        return findIndexOf;
                    }
                    this.mData[findIndexOf] = t;
                    this.mCallback.onChanged(findIndexOf, 1);
                    return findIndexOf;
                }
            }
            i = findIndexOf;
        }
        addToData(i, t);
        if (z) {
            this.mCallback.onInserted(i, 1);
        }
        return i;
    }

    public boolean remove(T t) {
        throwIfMerging();
        return remove(t, true);
    }

    public T removeItemAt(int i) {
        throwIfMerging();
        T t = get(i);
        removeItemAtIndex(i, true);
        return t;
    }

    private boolean remove(T t, boolean z) {
        int findIndexOf = findIndexOf(t, this.mData, 0, this.mSize, 2);
        if (findIndexOf == -1) {
            return false;
        }
        removeItemAtIndex(findIndexOf, z);
        return true;
    }

    private void removeItemAtIndex(int i, boolean z) {
        System.arraycopy(this.mData, i + 1, this.mData, i, (this.mSize - i) - 1);
        this.mSize--;
        this.mData[this.mSize] = null;
        if (z) {
            this.mCallback.onRemoved(i, 1);
        }
    }

    public void updateItemAt(int i, T t) {
        throwIfMerging();
        T t2 = get(i);
        boolean z = t2 == t || !this.mCallback.areContentsTheSame(t2, t);
        if (t2 == t || this.mCallback.compare(t2, t) != 0) {
            if (z) {
                this.mCallback.onChanged(i, 1);
            }
            removeItemAtIndex(i, false);
            int add = add(t, false);
            if (i != add) {
                this.mCallback.onMoved(i, add);
                return;
            }
            return;
        }
        this.mData[i] = t;
        if (z) {
            this.mCallback.onChanged(i, 1);
        }
    }

    public void recalculatePositionOfItemAt(int i) {
        throwIfMerging();
        Object obj = get(i);
        removeItemAtIndex(i, false);
        int add = add(obj, false);
        if (i != add) {
            this.mCallback.onMoved(i, add);
        }
    }

    public T get(int i) throws IndexOutOfBoundsException {
        if (i >= this.mSize || i < 0) {
            throw new IndexOutOfBoundsException("Asked to get item at " + i + " but size is " + this.mSize);
        } else if (this.mOldData == null || i < this.mMergedSize) {
            return this.mData[i];
        } else {
            return this.mOldData[(i - this.mMergedSize) + this.mOldDataStart];
        }
    }

    public int indexOf(T t) {
        if (this.mOldData != null) {
            int findIndexOf = findIndexOf(t, this.mData, 0, this.mMergedSize, 4);
            if (findIndexOf != -1) {
                return findIndexOf;
            }
            int findIndexOf2 = findIndexOf(t, this.mOldData, this.mOldDataStart, this.mOldDataSize, 4);
            if (findIndexOf2 != -1) {
                return (findIndexOf2 - this.mOldDataStart) + this.mMergedSize;
            }
            return -1;
        }
        return findIndexOf(t, this.mData, 0, this.mSize, 4);
    }

    private int findIndexOf(T t, T[] tArr, int i, int i2, int i3) {
        int i4;
        int i5 = i2;
        int i6 = i;
        while (i6 < i5) {
            int i7 = (i6 + i5) / 2;
            T t2 = tArr[i7];
            int compare = this.mCallback.compare(t2, t);
            if (compare < 0) {
                int i8 = i5;
                i4 = i7 + 1;
                i7 = i8;
            } else if (compare != 0) {
                i4 = i6;
            } else if (this.mCallback.areItemsTheSame(t2, t)) {
                return i7;
            } else {
                int linearEqualitySearch = linearEqualitySearch(t, i7, i6, i5);
                if (i3 != 1) {
                    return linearEqualitySearch;
                }
                if (linearEqualitySearch != -1) {
                    return linearEqualitySearch;
                }
                return i7;
            }
            i6 = i4;
            i5 = i7;
        }
        if (i3 != 1) {
            i6 = -1;
        }
        return i6;
    }

    private int linearEqualitySearch(T t, int i, int i2, int i3) {
        int i4 = i - 1;
        while (i4 >= i2) {
            T t2 = this.mData[i4];
            if (this.mCallback.compare(t2, t) != 0) {
                break;
            } else if (this.mCallback.areItemsTheSame(t2, t)) {
                return i4;
            } else {
                i4--;
            }
        }
        int i5 = i + 1;
        while (i5 < i3) {
            T t3 = this.mData[i5];
            if (this.mCallback.compare(t3, t) != 0) {
                break;
            } else if (this.mCallback.areItemsTheSame(t3, t)) {
                return i5;
            } else {
                i5++;
            }
        }
        return -1;
    }

    private void addToData(int i, T t) {
        if (i > this.mSize) {
            throw new IndexOutOfBoundsException("cannot add item to " + i + " because size is " + this.mSize);
        }
        if (this.mSize == this.mData.length) {
            T[] tArr = (Object[]) Array.newInstance(this.mTClass, this.mData.length + 10);
            System.arraycopy(this.mData, 0, tArr, 0, i);
            tArr[i] = t;
            System.arraycopy(this.mData, i, tArr, i + 1, this.mSize - i);
            this.mData = tArr;
        } else {
            System.arraycopy(this.mData, i, this.mData, i + 1, this.mSize - i);
            this.mData[i] = t;
        }
        this.mSize++;
    }

    public void clear() {
        throwIfMerging();
        if (this.mSize != 0) {
            int i = this.mSize;
            Arrays.fill(this.mData, 0, i, null);
            this.mSize = 0;
            this.mCallback.onRemoved(0, i);
        }
    }
}
