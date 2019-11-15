package org.bouncycastle.asn1.isismtt;

import com.tencent.connect.common.Constants;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;

public interface ISISMTTObjectIdentifiers {
    public static final ASN1ObjectIdentifier id_isismtt = new ASN1ObjectIdentifier("1.3.36.8");
    public static final ASN1ObjectIdentifier id_isismtt_at = id_isismtt.branch("3");
    public static final ASN1ObjectIdentifier id_isismtt_at_PKReference = id_isismtt_at.branch("7");
    public static final ASN1ObjectIdentifier id_isismtt_at_additionalInformation = id_isismtt_at.branch(Constants.VIA_REPORT_TYPE_WPA_STATE);
    public static final ASN1ObjectIdentifier id_isismtt_at_admission = id_isismtt_at.branch("3");
    public static final ASN1ObjectIdentifier id_isismtt_at_certHash = id_isismtt_at.branch(Constants.VIA_REPORT_TYPE_JOININ_GROUP);
    public static final ASN1ObjectIdentifier id_isismtt_at_certInDirSince = id_isismtt_at.branch(Constants.VIA_REPORT_TYPE_SET_AVATAR);
    public static final ASN1ObjectIdentifier id_isismtt_at_dateOfCertGen = id_isismtt_at.branch("1");
    public static final ASN1ObjectIdentifier id_isismtt_at_declarationOfMajority = id_isismtt_at.branch("5");
    public static final ASN1ObjectIdentifier id_isismtt_at_iCCSN = id_isismtt_at.branch(Constants.VIA_SHARE_TYPE_INFO);
    public static final ASN1ObjectIdentifier id_isismtt_at_liabilityLimitationFlag = new ASN1ObjectIdentifier("0.2.262.1.10.12.0");
    public static final ASN1ObjectIdentifier id_isismtt_at_monetaryLimit = id_isismtt_at.branch("4");
    public static final ASN1ObjectIdentifier id_isismtt_at_nameAtBirth = id_isismtt_at.branch(Constants.VIA_REPORT_TYPE_MAKE_FRIEND);
    public static final ASN1ObjectIdentifier id_isismtt_at_namingAuthorities = id_isismtt_at.branch(Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE);
    public static final ASN1ObjectIdentifier id_isismtt_at_procuration = id_isismtt_at.branch("2");
    public static final ASN1ObjectIdentifier id_isismtt_at_requestedCertificate = id_isismtt_at.branch(Constants.VIA_REPORT_TYPE_SHARE_TO_QQ);
    public static final ASN1ObjectIdentifier id_isismtt_at_restriction = id_isismtt_at.branch(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO);
    public static final ASN1ObjectIdentifier id_isismtt_at_retrieveIfAllowed = id_isismtt_at.branch("9");
    public static final ASN1ObjectIdentifier id_isismtt_cp = id_isismtt.branch("1");
    public static final ASN1ObjectIdentifier id_isismtt_cp_accredited = id_isismtt_cp.branch("1");
}
