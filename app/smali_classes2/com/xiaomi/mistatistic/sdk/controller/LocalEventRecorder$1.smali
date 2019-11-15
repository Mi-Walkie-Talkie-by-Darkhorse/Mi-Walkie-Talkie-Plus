.class final Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$1;
.super Ljava/lang/Object;
.source "LocalEventRecorder.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->insertEvent(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$1;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$1;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;->a(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V

    return-void
.end method
