.class public Lcom/xiaomi/utils/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field public static final NET_2G:I = 0x2

.field public static final NET_3G:I = 0x3

.field public static final NET_4G:I = 0x4

.field public static final NET_NO_NET:I = 0x1

.field public static final NET_UNKNOWN:I = 0x0

.field public static final NET_WIFI:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAPNType(Landroid/content/Context;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    if-nez v4, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_1

    packed-switch v0, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    move v0, v2

    goto :goto_0

    :pswitch_2
    move v0, v2

    goto :goto_0

    :pswitch_3
    move v0, v3

    goto :goto_0

    :pswitch_4
    move v0, v3

    goto :goto_0

    :pswitch_5
    move v0, v2

    goto :goto_0

    :pswitch_6
    move v0, v3

    goto :goto_0

    :pswitch_7
    move v0, v3

    goto :goto_0

    :pswitch_8
    move v0, v3

    goto :goto_0

    :pswitch_9
    move v0, v3

    goto :goto_0

    :pswitch_a
    move v0, v3

    goto :goto_0

    :pswitch_b
    move v0, v3

    goto :goto_0

    :pswitch_c
    move v0, v3

    goto :goto_0

    :pswitch_d
    move v0, v2

    goto :goto_0

    :pswitch_e
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_f
    move v0, v2

    goto :goto_0

    :cond_1
    if-ne v4, v1, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method
