.class final Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;
.super Ljava/lang/Object;
.source "MiStatInterface.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordException(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/b;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/MiStatInterface$1;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
