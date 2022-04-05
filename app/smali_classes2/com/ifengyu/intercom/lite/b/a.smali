.class public Lcom/ifengyu/intercom/lite/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ifengyu/intercom/lite/b/a;->a()V

    return-void
.end method

.method public static a()V
    .locals 5

    const v0, 0x7f030018

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/lite/b/a;->a:[Ljava/lang/String;

    const v0, 0x7f030014

    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f030016

    invoke-static {v1}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030015

    invoke-static {v2}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/ifengyu/intercom/lite/b/a;->b:[[Ljava/lang/String;

    return-void
.end method
