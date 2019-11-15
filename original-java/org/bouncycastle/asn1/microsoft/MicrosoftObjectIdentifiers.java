package org.bouncycastle.asn1.microsoft;

import org.bouncycastle.asn1.ASN1ObjectIdentifier;

public interface MicrosoftObjectIdentifiers {

    /* renamed from: microsoft reason: collision with root package name */
    public static final ASN1ObjectIdentifier f2microsoft = new ASN1ObjectIdentifier("1.3.6.1.4.1.311");
    public static final ASN1ObjectIdentifier microsoftAppPolicies = f2microsoft.branch("21.10");
    public static final ASN1ObjectIdentifier microsoftCaVersion = f2microsoft.branch("21.1");
    public static final ASN1ObjectIdentifier microsoftCertTemplateV1 = f2microsoft.branch("20.2");
    public static final ASN1ObjectIdentifier microsoftCertTemplateV2 = f2microsoft.branch("21.7");
    public static final ASN1ObjectIdentifier microsoftCrlNextPublish = f2microsoft.branch("21.4");
    public static final ASN1ObjectIdentifier microsoftPrevCaCertHash = f2microsoft.branch("21.2");
}
