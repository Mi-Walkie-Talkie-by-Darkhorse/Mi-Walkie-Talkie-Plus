.class public Lcom/xiaomi/channel/commonutils/android/d;
.super Ljava/lang/Object;


# direct methods
.method public static a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 v0, -0x2

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, p1

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static a([Landroid/content/pm/Signature;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Landroid/content/pm/Signature;

    const/4 v3, 0x0

    new-instance v4, Landroid/content/pm/Signature;

    const-string v5, "3082028b308201f4a00302010202044baf2eea300d06092a864886f70d0101050500308189310b300906035504061302434e310f300d06035504080c06e58c97e4baac3112301006035504070c09e58c97e4baace5b882312d302b060355040a0c24e58c97e4baace5b08fe7b1b3e7a791e68a80e69c89e99990e8b4a3e4bbbbe585ace58fb831123010060355040b0c09e8bdafe4bbb6e983a83112301006035504030c09e7aea1e79086e59198301e170d3130303332383130323635305a170d3335303332323130323635305a308189310b300906035504061302434e310f300d06035504080c06e58c97e4baac3112301006035504070c09e58c97e4baace5b882312d302b060355040a0c24e58c97e4baace5b08fe7b1b3e7a791e68a80e69c89e99990e8b4a3e4bbbbe585ace58fb831123010060355040b0c09e8bdafe4bbb6e983a83112301006035504030c09e7aea1e79086e5919830819f300d06092a864886f70d010101050003818d00308189028181008b0a35791ef2ed5107f6e8cbe3b74ee308a98b4f777b1c7dd7f63578f0bf788bff1c4e3900a8eed13b5b4763c22bbf6f9404e7bf91c555171756cce2cced01b99e265d74ffa77bd58a6a87f442c766758953282d6868a700f34bfc07c4389d6da3ab4cb2b8219c7f7d65837f69559dec82981472b9c57560edf693a510ebfcbf0203010001300d06092a864886f70d0101050500038181008b0562dee241538b22b53e12e5a0adcf5ade76470591256a41bde1bf6d5bcf3ed125114cb509df6d747a291a73093bd7068dc3640d2ab18a9b44626484a7b10020e0a59df1535983b582b3230d422cdea1feeedb16e9c838e2e1957ffc72e84bc83febbb97706ae2e190dab9d6483a353abcedd531398742ebdac12661f447ab"

    invoke-direct {v4, v5}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-static {p0, v2}, Lcom/xiaomi/channel/commonutils/android/d;->a([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method
