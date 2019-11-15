package org.apache.http.message;

import java.util.NoSuchElementException;
import org.apache.http.HeaderIterator;
import org.apache.http.ParseException;
import org.apache.http.TokenIterator;

@Deprecated
public class BasicTokenIterator implements TokenIterator {
    public static final String HTTP_SEPARATORS = " ,;=()<>@:\\\"/[]?{}\t";
    protected String currentHeader;
    protected String currentToken;
    protected final HeaderIterator headerIt;
    protected int searchPos;

    public BasicTokenIterator(HeaderIterator headerIterator) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasNext() {
        throw new RuntimeException("Stub!");
    }

    public String nextToken() throws NoSuchElementException, ParseException {
        throw new RuntimeException("Stub!");
    }

    public final Object next() throws NoSuchElementException, ParseException {
        throw new RuntimeException("Stub!");
    }

    public final void remove() throws UnsupportedOperationException {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public int findNext(int i) throws ParseException {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public String createToken(String str, int i, int i2) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public int findTokenStart(int i) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public int findTokenSeparator(int i) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public int findTokenEnd(int i) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public boolean isTokenSeparator(char c) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public boolean isWhitespace(char c) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public boolean isTokenChar(char c) {
        throw new RuntimeException("Stub!");
    }

    /* access modifiers changed from: protected */
    public boolean isHttpSeparator(char c) {
        throw new RuntimeException("Stub!");
    }
}
