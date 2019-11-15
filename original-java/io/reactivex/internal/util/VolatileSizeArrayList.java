package io.reactivex.internal.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.concurrent.atomic.AtomicInteger;

public final class VolatileSizeArrayList<T> extends AtomicInteger implements List<T>, RandomAccess {
    private static final long serialVersionUID = 3972397474470203923L;
    final ArrayList<T> a = new ArrayList<>();

    public int size() {
        return get();
    }

    public boolean isEmpty() {
        return get() == 0;
    }

    public boolean contains(Object obj) {
        return this.a.contains(obj);
    }

    public Iterator<T> iterator() {
        return this.a.iterator();
    }

    public Object[] toArray() {
        return this.a.toArray();
    }

    public <E> E[] toArray(E[] eArr) {
        return this.a.toArray(eArr);
    }

    public boolean add(T t) {
        boolean add = this.a.add(t);
        lazySet(this.a.size());
        return add;
    }

    public boolean remove(Object obj) {
        boolean remove = this.a.remove(obj);
        lazySet(this.a.size());
        return remove;
    }

    public boolean containsAll(Collection<?> collection) {
        return this.a.containsAll(collection);
    }

    public boolean addAll(Collection<? extends T> collection) {
        boolean addAll = this.a.addAll(collection);
        lazySet(this.a.size());
        return addAll;
    }

    public boolean addAll(int i, Collection<? extends T> collection) {
        boolean addAll = this.a.addAll(i, collection);
        lazySet(this.a.size());
        return addAll;
    }

    public boolean removeAll(Collection<?> collection) {
        boolean removeAll = this.a.removeAll(collection);
        lazySet(this.a.size());
        return removeAll;
    }

    public boolean retainAll(Collection<?> collection) {
        boolean retainAll = this.a.retainAll(collection);
        lazySet(this.a.size());
        return retainAll;
    }

    public void clear() {
        this.a.clear();
        lazySet(0);
    }

    public T get(int i) {
        return this.a.get(i);
    }

    public T set(int i, T t) {
        return this.a.set(i, t);
    }

    public void add(int i, T t) {
        this.a.add(i, t);
        lazySet(this.a.size());
    }

    public T remove(int i) {
        T remove = this.a.remove(i);
        lazySet(this.a.size());
        return remove;
    }

    public int indexOf(Object obj) {
        return this.a.indexOf(obj);
    }

    public int lastIndexOf(Object obj) {
        return this.a.lastIndexOf(obj);
    }

    public ListIterator<T> listIterator() {
        return this.a.listIterator();
    }

    public ListIterator<T> listIterator(int i) {
        return this.a.listIterator(i);
    }

    public List<T> subList(int i, int i2) {
        return this.a.subList(i, i2);
    }

    public boolean equals(Object obj) {
        if (obj instanceof VolatileSizeArrayList) {
            return this.a.equals(((VolatileSizeArrayList) obj).a);
        }
        return this.a.equals(obj);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.toString();
    }
}
