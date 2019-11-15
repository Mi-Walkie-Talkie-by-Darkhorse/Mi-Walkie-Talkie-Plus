package com.autonavi.ae.search.model;

public class GPOICATEGORY {
    int bSubCategoryExist;
    int nCategoryIDNum;
    int nCategoryIndex;
    int[] pnCategoryID;
    String szName;

    public GPOICATEGORY(int i, int[] iArr, int i2, int i3, String str) {
        this.nCategoryIDNum = i;
        this.pnCategoryID = iArr;
        this.nCategoryIndex = i2;
        this.bSubCategoryExist = i3;
        this.szName = str;
    }
}
