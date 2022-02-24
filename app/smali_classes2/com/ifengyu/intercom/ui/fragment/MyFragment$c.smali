.class Lcom/ifengyu/intercom/ui/fragment/MyFragment$c;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b(Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$c;->a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$c;->a:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->b(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)Lcom/ifengyu/intercom/ui/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    return-void
.end method
