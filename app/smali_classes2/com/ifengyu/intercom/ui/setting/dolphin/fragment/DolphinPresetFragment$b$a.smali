.class Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b$a;
.super Ljava/lang/Object;
.source "DolphinPresetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;->a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/UserChannel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;Lcom/ifengyu/intercom/ui/setting/UserChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b$a;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b$a;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b$a;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;->e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b$a;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;->a(Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;Lcom/ifengyu/intercom/ui/setting/UserChannel;)Lcom/ifengyu/intercom/ui/setting/UserChannel;

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b$a;->b:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b;->e:Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/DolphinPresetFragment$b$a;->a:Lcom/ifengyu/intercom/ui/setting/UserChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/dolphin/fragment/a;->e(Lcom/ifengyu/intercom/ui/setting/UserChannel;)V

    return-void
.end method