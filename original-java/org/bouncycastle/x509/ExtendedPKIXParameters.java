package org.bouncycastle.x509;

import java.security.InvalidAlgorithmParameterException;
import java.security.cert.CertSelector;
import java.security.cert.PKIXParameters;
import java.security.cert.X509CertSelector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.bouncycastle.util.Selector;
import org.bouncycastle.util.Store;

public class ExtendedPKIXParameters extends PKIXParameters {
    public static final int CHAIN_VALIDITY_MODEL = 1;
    public static final int PKIX_VALIDITY_MODEL = 0;
    private boolean additionalLocationsEnabled;
    private List additionalStores = new ArrayList();
    private Set attrCertCheckers = new HashSet();
    private Set necessaryACAttributes = new HashSet();
    private Set prohibitedACAttributes = new HashSet();
    private Selector selector;
    private List stores = new ArrayList();
    private Set trustedACIssuers = new HashSet();
    private boolean useDeltas = false;
    private int validityModel = 0;

    public ExtendedPKIXParameters(Set set) throws InvalidAlgorithmParameterException {
        super(set);
    }

    public static ExtendedPKIXParameters getInstance(PKIXParameters pKIXParameters) {
        try {
            ExtendedPKIXParameters extendedPKIXParameters = new ExtendedPKIXParameters(pKIXParameters.getTrustAnchors());
            extendedPKIXParameters.setParams(pKIXParameters);
            return extendedPKIXParameters;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public void addAddionalStore(Store store) {
        addAdditionalStore(store);
    }

    public void addAdditionalStore(Store store) {
        if (store != null) {
            this.additionalStores.add(store);
        }
    }

    public void addStore(Store store) {
        if (store != null) {
            this.stores.add(store);
        }
    }

    public Object clone() {
        try {
            ExtendedPKIXParameters extendedPKIXParameters = new ExtendedPKIXParameters(getTrustAnchors());
            extendedPKIXParameters.setParams(this);
            return extendedPKIXParameters;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    public List getAdditionalStores() {
        return Collections.unmodifiableList(this.additionalStores);
    }

    public Set getAttrCertCheckers() {
        return Collections.unmodifiableSet(this.attrCertCheckers);
    }

    public Set getNecessaryACAttributes() {
        return Collections.unmodifiableSet(this.necessaryACAttributes);
    }

    public Set getProhibitedACAttributes() {
        return Collections.unmodifiableSet(this.prohibitedACAttributes);
    }

    public List getStores() {
        return Collections.unmodifiableList(new ArrayList(this.stores));
    }

    public Selector getTargetConstraints() {
        if (this.selector != null) {
            return (Selector) this.selector.clone();
        }
        return null;
    }

    public Set getTrustedACIssuers() {
        return Collections.unmodifiableSet(this.trustedACIssuers);
    }

    public int getValidityModel() {
        return this.validityModel;
    }

    public boolean isAdditionalLocationsEnabled() {
        return this.additionalLocationsEnabled;
    }

    public boolean isUseDeltasEnabled() {
        return this.useDeltas;
    }

    public void setAdditionalLocationsEnabled(boolean z) {
        this.additionalLocationsEnabled = z;
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.Object>, for r4v0, types: [java.util.Set<java.lang.Object>, java.util.Collection, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setAttrCertCheckers(java.util.Set<java.lang.Object> r4) {
        /*
            r3 = this;
            if (r4 != 0) goto L_0x0008
            java.util.Set r0 = r3.attrCertCheckers
            r0.clear()
        L_0x0007:
            return
        L_0x0008:
            java.util.Iterator r0 = r4.iterator()
        L_0x000c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x003f
            java.lang.Object r1 = r0.next()
            boolean r1 = r1 instanceof org.bouncycastle.x509.PKIXAttrCertChecker
            if (r1 != 0) goto L_0x000c
            java.lang.ClassCastException r0 = new java.lang.ClassCastException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "All elements of set must be of type "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.Class<org.bouncycastle.x509.PKIXAttrCertChecker> r2 = org.bouncycastle.x509.PKIXAttrCertChecker.class
            java.lang.String r2 = r2.getName()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "."
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x003f:
            java.util.Set r0 = r3.attrCertCheckers
            r0.clear()
            java.util.Set r0 = r3.attrCertCheckers
            r0.addAll(r4)
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.ExtendedPKIXParameters.setAttrCertCheckers(java.util.Set):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.List, code=java.util.List<java.security.cert.CertStore>, for r3v0, types: [java.util.List, java.util.List<java.security.cert.CertStore>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setCertStores(java.util.List<java.security.cert.CertStore> r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L_0x0016
            java.util.Iterator r1 = r3.iterator()
        L_0x0006:
            boolean r0 = r1.hasNext()
            if (r0 == 0) goto L_0x0016
            java.lang.Object r0 = r1.next()
            java.security.cert.CertStore r0 = (java.security.cert.CertStore) r0
            r2.addCertStore(r0)
            goto L_0x0006
        L_0x0016:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.ExtendedPKIXParameters.setCertStores(java.util.List):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.Object>, for r3v0, types: [java.util.Set<java.lang.Object>, java.util.Collection, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setNecessaryACAttributes(java.util.Set<java.lang.Object> r3) {
        /*
            r2 = this;
            if (r3 != 0) goto L_0x0008
            java.util.Set r0 = r2.necessaryACAttributes
            r0.clear()
        L_0x0007:
            return
        L_0x0008:
            java.util.Iterator r0 = r3.iterator()
        L_0x000c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0022
            java.lang.Object r1 = r0.next()
            boolean r1 = r1 instanceof java.lang.String
            if (r1 != 0) goto L_0x000c
            java.lang.ClassCastException r0 = new java.lang.ClassCastException
            java.lang.String r1 = "All elements of set must be of type String."
            r0.<init>(r1)
            throw r0
        L_0x0022:
            java.util.Set r0 = r2.necessaryACAttributes
            r0.clear()
            java.util.Set r0 = r2.necessaryACAttributes
            r0.addAll(r3)
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.ExtendedPKIXParameters.setNecessaryACAttributes(java.util.Set):void");
    }

    /* access modifiers changed from: protected */
    public void setParams(PKIXParameters pKIXParameters) {
        setDate(pKIXParameters.getDate());
        setCertPathCheckers(pKIXParameters.getCertPathCheckers());
        setCertStores(pKIXParameters.getCertStores());
        setAnyPolicyInhibited(pKIXParameters.isAnyPolicyInhibited());
        setExplicitPolicyRequired(pKIXParameters.isExplicitPolicyRequired());
        setPolicyMappingInhibited(pKIXParameters.isPolicyMappingInhibited());
        setRevocationEnabled(pKIXParameters.isRevocationEnabled());
        setInitialPolicies(pKIXParameters.getInitialPolicies());
        setPolicyQualifiersRejected(pKIXParameters.getPolicyQualifiersRejected());
        setSigProvider(pKIXParameters.getSigProvider());
        setTargetCertConstraints(pKIXParameters.getTargetCertConstraints());
        try {
            setTrustAnchors(pKIXParameters.getTrustAnchors());
            if (pKIXParameters instanceof ExtendedPKIXParameters) {
                ExtendedPKIXParameters extendedPKIXParameters = (ExtendedPKIXParameters) pKIXParameters;
                this.validityModel = extendedPKIXParameters.validityModel;
                this.useDeltas = extendedPKIXParameters.useDeltas;
                this.additionalLocationsEnabled = extendedPKIXParameters.additionalLocationsEnabled;
                this.selector = extendedPKIXParameters.selector == null ? null : (Selector) extendedPKIXParameters.selector.clone();
                this.stores = new ArrayList(extendedPKIXParameters.stores);
                this.additionalStores = new ArrayList(extendedPKIXParameters.additionalStores);
                this.trustedACIssuers = new HashSet(extendedPKIXParameters.trustedACIssuers);
                this.prohibitedACAttributes = new HashSet(extendedPKIXParameters.prohibitedACAttributes);
                this.necessaryACAttributes = new HashSet(extendedPKIXParameters.necessaryACAttributes);
                this.attrCertCheckers = new HashSet(extendedPKIXParameters.attrCertCheckers);
            }
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.Object>, for r3v0, types: [java.util.Set<java.lang.Object>, java.util.Collection, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setProhibitedACAttributes(java.util.Set<java.lang.Object> r3) {
        /*
            r2 = this;
            if (r3 != 0) goto L_0x0008
            java.util.Set r0 = r2.prohibitedACAttributes
            r0.clear()
        L_0x0007:
            return
        L_0x0008:
            java.util.Iterator r0 = r3.iterator()
        L_0x000c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0022
            java.lang.Object r1 = r0.next()
            boolean r1 = r1 instanceof java.lang.String
            if (r1 != 0) goto L_0x000c
            java.lang.ClassCastException r0 = new java.lang.ClassCastException
            java.lang.String r1 = "All elements of set must be of type String."
            r0.<init>(r1)
            throw r0
        L_0x0022:
            java.util.Set r0 = r2.prohibitedACAttributes
            r0.clear()
            java.util.Set r0 = r2.prohibitedACAttributes
            r0.addAll(r3)
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.ExtendedPKIXParameters.setProhibitedACAttributes(java.util.Set):void");
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.List, code=java.util.List<java.lang.Object>, for r3v0, types: [java.util.List, java.util.Collection, java.util.List<java.lang.Object>] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setStores(java.util.List<java.lang.Object> r3) {
        /*
            r2 = this;
            if (r3 != 0) goto L_0x000a
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r2.stores = r0
        L_0x0009:
            return
        L_0x000a:
            java.util.Iterator r0 = r3.iterator()
        L_0x000e:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x0024
            java.lang.Object r1 = r0.next()
            boolean r1 = r1 instanceof org.bouncycastle.util.Store
            if (r1 != 0) goto L_0x000e
            java.lang.ClassCastException r0 = new java.lang.ClassCastException
            java.lang.String r1 = "All elements of list must be of type org.bouncycastle.util.Store."
            r0.<init>(r1)
            throw r0
        L_0x0024:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r3)
            r2.stores = r0
            goto L_0x0009
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.ExtendedPKIXParameters.setStores(java.util.List):void");
    }

    public void setTargetCertConstraints(CertSelector certSelector) {
        super.setTargetCertConstraints(certSelector);
        if (certSelector != null) {
            this.selector = X509CertStoreSelector.getInstance((X509CertSelector) certSelector);
        } else {
            this.selector = null;
        }
    }

    public void setTargetConstraints(Selector selector2) {
        if (selector2 != null) {
            this.selector = (Selector) selector2.clone();
        } else {
            this.selector = null;
        }
    }

    /* JADX WARNING: Incorrect type for immutable var: ssa=java.util.Set, code=java.util.Set<java.lang.Object>, for r4v0, types: [java.util.Set<java.lang.Object>, java.util.Collection, java.util.Set] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void setTrustedACIssuers(java.util.Set<java.lang.Object> r4) {
        /*
            r3 = this;
            if (r4 != 0) goto L_0x0008
            java.util.Set r0 = r3.trustedACIssuers
            r0.clear()
        L_0x0007:
            return
        L_0x0008:
            java.util.Iterator r0 = r4.iterator()
        L_0x000c:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L_0x003f
            java.lang.Object r1 = r0.next()
            boolean r1 = r1 instanceof java.security.cert.TrustAnchor
            if (r1 != 0) goto L_0x000c
            java.lang.ClassCastException r0 = new java.lang.ClassCastException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "All elements of set must be of type "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.Class<java.security.cert.TrustAnchor> r2 = java.security.cert.TrustAnchor.class
            java.lang.String r2 = r2.getName()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "."
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x003f:
            java.util.Set r0 = r3.trustedACIssuers
            r0.clear()
            java.util.Set r0 = r3.trustedACIssuers
            r0.addAll(r4)
            goto L_0x0007
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.x509.ExtendedPKIXParameters.setTrustedACIssuers(java.util.Set):void");
    }

    public void setUseDeltasEnabled(boolean z) {
        this.useDeltas = z;
    }

    public void setValidityModel(int i) {
        this.validityModel = i;
    }
}
