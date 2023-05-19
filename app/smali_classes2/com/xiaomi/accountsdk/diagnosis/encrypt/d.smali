.class public Lcom/xiaomi/accountsdk/diagnosis/encrypt/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/diagnosis/encrypt/d$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/d;->a()Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method private static a()Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/d$a;->a()Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;

    move-result-object v0

    return-object v0
.end method
