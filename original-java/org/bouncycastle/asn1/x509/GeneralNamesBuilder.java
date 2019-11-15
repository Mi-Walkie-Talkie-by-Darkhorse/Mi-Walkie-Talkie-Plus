package org.bouncycastle.asn1.x509;

import java.util.Vector;

public class GeneralNamesBuilder {
    private Vector names = new Vector();

    public GeneralNamesBuilder addName(GeneralName generalName) {
        this.names.addElement(generalName);
        return this;
    }

    public GeneralNamesBuilder addNames(GeneralNames generalNames) {
        GeneralName[] names2 = generalNames.getNames();
        for (int i = 0; i != names2.length; i++) {
            this.names.addElement(names2[i]);
        }
        return this;
    }

    public GeneralNames build() {
        GeneralName[] generalNameArr = new GeneralName[this.names.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 == generalNameArr.length) {
                return new GeneralNames(generalNameArr);
            }
            generalNameArr[i2] = (GeneralName) this.names.elementAt(i2);
            i = i2 + 1;
        }
    }
}
