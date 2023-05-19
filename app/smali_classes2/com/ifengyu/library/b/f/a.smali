.class public Lcom/ifengyu/library/b/f/a;
.super Ljava/lang/Object;
.source "NewHttpHelper.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x273a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2761

    if-eq p0, v0, :cond_1

    const/16 v0, 0x277e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 1
    sget p0, Lcom/ifengyu/library/R$string;->net_work_error_pls_retry:I

    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_0
    sget p0, Lcom/ifengyu/library/R$string;->verify_code_error:I

    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :pswitch_1
    sget p0, Lcom/ifengyu/library/R$string;->invite_code_error:I

    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    sget p0, Lcom/ifengyu/library/R$string;->pwd_or_account_error:I

    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    sget p0, Lcom/ifengyu/library/R$string;->request_fail_when_busy:I

    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    sget p0, Lcom/ifengyu/library/R$string;->register_phone_had_refistered:I

    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    sget p0, Lcom/ifengyu/library/R$string;->phone_not_register:I

    invoke-static {p0}, Lcom/ifengyu/library/utils/s;->o(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2757
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
