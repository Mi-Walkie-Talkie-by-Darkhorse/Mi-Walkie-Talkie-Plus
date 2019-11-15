package org.bouncycastle.asn1.x509;

import com.tencent.connect.common.Constants;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;

public interface X509AttributeIdentifiers {
    public static final ASN1ObjectIdentifier RoleSyntax = new ASN1ObjectIdentifier("2.5.4.72");
    public static final ASN1ObjectIdentifier id_aca = X509ObjectIdentifiers.id_pkix.branch(Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
    public static final ASN1ObjectIdentifier id_aca_accessIdentity = id_aca.branch("2");
    public static final ASN1ObjectIdentifier id_aca_authenticationInfo = id_aca.branch("1");
    public static final ASN1ObjectIdentifier id_aca_chargingIdentity = id_aca.branch("3");
    public static final ASN1ObjectIdentifier id_aca_encAttrs = id_aca.branch(Constants.VIA_SHARE_TYPE_INFO);
    public static final ASN1ObjectIdentifier id_aca_group = id_aca.branch("4");
    public static final ASN1ObjectIdentifier id_at_clearance = new ASN1ObjectIdentifier("2.5.1.5.55");
    public static final ASN1ObjectIdentifier id_at_role = new ASN1ObjectIdentifier("2.5.4.72");
    public static final ASN1ObjectIdentifier id_ce_targetInformation = X509ObjectIdentifiers.id_ce.branch("55");
    public static final ASN1ObjectIdentifier id_pe_aaControls = X509ObjectIdentifiers.id_pe.branch(Constants.VIA_SHARE_TYPE_INFO);
    public static final ASN1ObjectIdentifier id_pe_ac_auditIdentity = X509ObjectIdentifiers.id_pe.branch("4");
    public static final ASN1ObjectIdentifier id_pe_ac_proxying = X509ObjectIdentifiers.id_pe.branch(Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
}
