.class Lcom/xiaomi/push/ba$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ba;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/push/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/ba$a;->a:Lcom/xiaomi/push/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/push/ba$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/ba$a;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/ba$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/ba$a;->d:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/ba;Lcom/xiaomi/push/bb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ba$a;-><init>(Lcom/xiaomi/push/ba;)V

    return-void
.end method
