.class Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;
.super Ljava/lang/Object;
.source "DolphinCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->r(Lb/f/a/a/c/c;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/f/a/a/c/c;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

.field final synthetic c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;Lb/f/a/a/c/c;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;->a:Lb/f/a/a/c/c;

    iput-object p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;->b:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;->a:Lb/f/a/a/c/c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$y;->getLayoutPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->i2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;I)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f;->f:Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment$f$b;->b:Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;->j2(Lcom/ifengyu/intercom/device/oldDevice/dolphin/fragment/DolphinCustomFragment;Lcom/ifengyu/intercom/device/oldDevice/model/DolphinChannelModel;)V

    const/4 p1, 0x1

    return p1
.end method
