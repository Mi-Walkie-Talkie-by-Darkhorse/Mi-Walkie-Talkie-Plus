package com.google.zxing.oned.rss.expanded.decoders;

final class CurrentParsingState {
    private State encoding = State.NUMERIC;
    private int position = 0;

    private enum State {
        NUMERIC,
        ALPHA,
        ISO_IEC_646
    }

    CurrentParsingState() {
    }

    /* access modifiers changed from: 0000 */
    public int getPosition() {
        return this.position;
    }

    /* access modifiers changed from: 0000 */
    public void setPosition(int i) {
        this.position = i;
    }

    /* access modifiers changed from: 0000 */
    public void incrementPosition(int i) {
        this.position += i;
    }

    /* access modifiers changed from: 0000 */
    public boolean isAlpha() {
        return this.encoding == State.ALPHA;
    }

    /* access modifiers changed from: 0000 */
    public boolean isNumeric() {
        return this.encoding == State.NUMERIC;
    }

    /* access modifiers changed from: 0000 */
    public boolean isIsoIec646() {
        return this.encoding == State.ISO_IEC_646;
    }

    /* access modifiers changed from: 0000 */
    public void setNumeric() {
        this.encoding = State.NUMERIC;
    }

    /* access modifiers changed from: 0000 */
    public void setAlpha() {
        this.encoding = State.ALPHA;
    }

    /* access modifiers changed from: 0000 */
    public void setIsoIec646() {
        this.encoding = State.ISO_IEC_646;
    }
}
