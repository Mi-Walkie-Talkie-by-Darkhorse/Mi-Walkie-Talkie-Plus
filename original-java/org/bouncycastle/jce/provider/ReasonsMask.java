package org.bouncycastle.jce.provider;

import org.bouncycastle.asn1.x509.ReasonFlags;

class ReasonsMask {
    static final ReasonsMask allReasons = new ReasonsMask(33023);
    private int _reasons;

    ReasonsMask() {
        this(0);
    }

    private ReasonsMask(int i) {
        this._reasons = i;
    }

    ReasonsMask(ReasonFlags reasonFlags) {
        this._reasons = reasonFlags.intValue();
    }

    /* access modifiers changed from: 0000 */
    public void addReasons(ReasonsMask reasonsMask) {
        this._reasons |= reasonsMask.getReasons();
    }

    /* access modifiers changed from: 0000 */
    public int getReasons() {
        return this._reasons;
    }

    /* access modifiers changed from: 0000 */
    public boolean hasNewReasons(ReasonsMask reasonsMask) {
        return (this._reasons | (reasonsMask.getReasons() ^ this._reasons)) != 0;
    }

    /* access modifiers changed from: 0000 */
    public ReasonsMask intersect(ReasonsMask reasonsMask) {
        ReasonsMask reasonsMask2 = new ReasonsMask();
        reasonsMask2.addReasons(new ReasonsMask(this._reasons & reasonsMask.getReasons()));
        return reasonsMask2;
    }

    /* access modifiers changed from: 0000 */
    public boolean isAllReasons() {
        return this._reasons == allReasons._reasons;
    }
}
