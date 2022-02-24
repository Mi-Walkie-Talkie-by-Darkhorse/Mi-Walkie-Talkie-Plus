.class public Lcom/xiaomi/push/dp;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final a:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/push/dp;->a:Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/push/hx;->o:Lcom/xiaomi/push/hx;

    invoke-virtual {v0}, Lcom/xiaomi/push/hx;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/dp;->a:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/push/hx;->p:Lcom/xiaomi/push/hx;

    invoke-virtual {v0}, Lcom/xiaomi/push/hx;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/dp;->b:Ljava/lang/String;

    return-void
.end method
