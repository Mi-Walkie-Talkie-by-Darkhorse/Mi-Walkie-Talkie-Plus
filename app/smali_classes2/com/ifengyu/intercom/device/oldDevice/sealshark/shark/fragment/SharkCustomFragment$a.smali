.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$a;
.super Ljava/lang/Object;
.source "SharkCustomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;->o2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/SharkCustomFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->h:Z

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->F1()V

    return-void
.end method
