package org.bouncycastle.pqc.jcajce.spec;

import java.security.spec.AlgorithmParameterSpec;

public class McElieceCCA2ParameterSpec implements AlgorithmParameterSpec {
    public static final String DEFAULT_MD = "SHA256";
    private String mdName;

    public McElieceCCA2ParameterSpec() {
        this(DEFAULT_MD);
    }

    public McElieceCCA2ParameterSpec(String str) {
        this.mdName = str;
    }

    public String getMDName() {
        return this.mdName;
    }
}
