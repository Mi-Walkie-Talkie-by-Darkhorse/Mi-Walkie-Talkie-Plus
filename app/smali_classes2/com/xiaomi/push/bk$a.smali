.class public Lcom/xiaomi/push/bk$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/push/bk;


# instance fields
.field public a:I

.field public a:Ljava/lang/Object;

.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/bk;

    invoke-direct {v0}, Lcom/xiaomi/push/bk;-><init>()V

    sput-object v0, Lcom/xiaomi/push/bk$a;->a:Lcom/xiaomi/push/bk;

    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/push/bk$a;->a:I

    iput-object p2, p0, Lcom/xiaomi/push/bk$a;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/push/bk;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/bk$a;->a:Lcom/xiaomi/push/bk;

    return-object v0
.end method
