.class Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$2;
.super Ljava/lang/Object;
.source "SealCustomFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->d:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment$2;->a:Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealCustomFragment;->f()V

    return-void
.end method
