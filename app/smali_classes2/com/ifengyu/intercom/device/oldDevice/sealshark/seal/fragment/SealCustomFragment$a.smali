.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$a;
.super Ljava/lang/Object;
.source "SealCustomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;->o2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment$a;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/SealCustomFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->g:Z

    .line 2
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/a;->F1()V

    return-void
.end method