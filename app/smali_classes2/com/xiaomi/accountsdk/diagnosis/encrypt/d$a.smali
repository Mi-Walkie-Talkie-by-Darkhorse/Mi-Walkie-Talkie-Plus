.class Lcom/xiaomi/accountsdk/diagnosis/encrypt/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/diagnosis/encrypt/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;->a()Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/d$a;->a:Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/encrypt/d$a;->a:Lcom/xiaomi/accountsdk/diagnosis/encrypt/e;

    return-object v0
.end method
