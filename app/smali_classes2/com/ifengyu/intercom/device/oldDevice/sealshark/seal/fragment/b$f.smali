.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$f;
.super Ljava/lang/Object;
.source "SealPresetFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;->w2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/d;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b;Lcom/ifengyu/intercom/ui/widget/dialog/d;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$f;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/seal/fragment/b$f;->a:Lcom/ifengyu/intercom/ui/widget/dialog/d;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->f()V

    return-void
.end method
