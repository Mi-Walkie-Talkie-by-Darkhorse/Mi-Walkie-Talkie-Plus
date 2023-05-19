.class public final Lcom/shanlitech/et/c/e;
.super Ljava/lang/Object;
.source "ErrorCodeUtils.java"


# direct methods
.method public static a(IILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-gez p0, :cond_1

    mul-int/lit8 p0, p0, -0x1

    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_5

    const/16 p1, 0xb

    if-eq p0, p1, :cond_4

    const/16 p1, 0x18

    if-eq p0, p1, :cond_3

    const/16 p1, 0x32

    if-eq p0, p1, :cond_2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "\u6ca1\u6709\u914d\u7f6e\u5e10\u53f7\u4fe1\u606f"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "\u673a\u5361\u88ab\u9501\u5b9a"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u7ec8\u7aef\u88ab\u9501\u5b9a"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u8d26\u53f7\u88ab\u9501\u5b9a"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u63a5\u6536\u62a2\u9ea6\u56de\u5e94\u8d85\u65f6"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u4ee5\u8f83\u4f4e\u7684\u89d2\u8272\u503c\u62a2\u9ea6"

    goto :goto_0

    :pswitch_6
    const-string v0, "\u62a2\u9ea6\u65f6\u7533\u8bf7\u97f3\u9891\u7126\u70b9\u5931\u8d25"

    goto :goto_0

    :pswitch_7
    const-string v0, "\u5185\u90e8\u4f1a\u8bdd\u72b6\u6001\u9519\u8bef"

    goto :goto_0

    :pswitch_8
    const-string v0, "\u9065\u95ed\u72b6\u6001\u62a2\u9ea6,\u4e0d\u5141\u8bb8"

    goto :goto_0

    :pswitch_9
    const-string v0, "\u77ed\u6682\u65f6\u95f4\u5185\u591a\u6b21\u62a2\u9ea6,\u4e0d\u5141\u8bb8"

    goto :goto_0

    :pswitch_a
    const-string v0, "\u62a2\u9ea6\u88ab\u62d2\u7edd"

    goto :goto_0

    :pswitch_b
    const-string v0, "\u52a0\u5165\u7fa4\u7ec4\u5931\u8d25"

    goto :goto_0

    :pswitch_c
    const-string v0, "\u65e0\u6cd5\u8fde\u63a5\u670d\u52a1\u5668"

    goto :goto_0

    :pswitch_d
    const-string v0, "\u7f51\u7edc\u6b63\u5728\u91cd\u8fde"

    goto :goto_0

    :pswitch_e
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25"

    goto :goto_0

    :pswitch_f
    const-string v0, "\u914d\u7f6e\u4fe1\u606f\u9519\u8bef"

    goto :goto_0

    :pswitch_10
    const-string v0, "\u60a8\u7684\u8d26\u53f7\u5df2\u88ab\u975e\u6cd5\u4fee\u6539\uff0c\u8bf7\u8054\u7cfb\u4ee3\u7406\u5546"

    goto :goto_0

    :pswitch_11
    const-string v0, "\u65e0\u6548\u7684\u5e10\u53f7\u767b\u5f55\u6743\u9650"

    goto :goto_0

    :pswitch_12
    const-string v0, "\u5e10\u53f7\u4e0d\u5b58\u5728"

    goto :goto_0

    :pswitch_13
    const-string v0, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0

    :pswitch_14
    const-string v0, "\u5e10\u53f7\u5bc6\u7801\u9519\u8bef"

    goto :goto_0

    :cond_2
    const-string v0, "\u6253\u5f00\u5f55\u97f3\u8bbe\u5907\u5931\u8d25"

    goto :goto_0

    :cond_3
    const-string v0, "\u65e0\u7f51\u7edc\u4fe1\u53f7"

    goto :goto_0

    :cond_4
    const-string v0, "\u5e10\u53f7\u767b\u5f55\u8d85\u65f6"

    goto :goto_0

    :cond_5
    const/4 p0, -0x8

    if-eq p1, p0, :cond_6

    const-string v0, "\u5e10\u53f7\u5df2\u5728\u5176\u4ed6\u4f4d\u7f6e\u767b\u5f55"

    goto :goto_0

    :cond_6
    const-string v0, "\u8d26\u53f7\u88ab\u7981\u7528"

    :goto_0
    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move-object p2, v0

    :cond_8
    :goto_1
    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
