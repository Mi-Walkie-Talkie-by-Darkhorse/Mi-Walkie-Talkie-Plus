package org.jboss.netty.channel.group;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class CombinedIterator<E> implements Iterator<E> {
    private Iterator<E> currentIterator;
    private final Iterator<E> i1;
    private final Iterator<E> i2;

    CombinedIterator(Iterator<E> it, Iterator<E> it2) {
        if (it == null) {
            throw new NullPointerException("i1");
        } else if (it2 == null) {
            throw new NullPointerException("i2");
        } else {
            this.i1 = it;
            this.i2 = it2;
            this.currentIterator = it;
        }
    }

    public boolean hasNext() {
        while (!this.currentIterator.hasNext()) {
            if (this.currentIterator != this.i1) {
                return false;
            }
            this.currentIterator = this.i2;
        }
        return true;
    }

    public E next() {
        while (true) {
            try {
                return this.currentIterator.next();
            } catch (NoSuchElementException e) {
                if (this.currentIterator == this.i1) {
                    this.currentIterator = this.i2;
                } else {
                    throw e;
                }
            }
        }
    }

    public void remove() {
        this.currentIterator.remove();
    }
}
