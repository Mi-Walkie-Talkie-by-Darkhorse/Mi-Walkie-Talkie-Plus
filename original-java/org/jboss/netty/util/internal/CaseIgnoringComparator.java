package org.jboss.netty.util.internal;

import java.io.Serializable;
import java.util.Comparator;

public final class CaseIgnoringComparator implements Serializable, Comparator<String> {
    public static final CaseIgnoringComparator INSTANCE = new CaseIgnoringComparator();
    private static final long serialVersionUID = 4582133183775373862L;

    private CaseIgnoringComparator() {
    }

    public int compare(String str, String str2) {
        return str.compareToIgnoreCase(str2);
    }

    private Object readResolve() {
        return INSTANCE;
    }
}
