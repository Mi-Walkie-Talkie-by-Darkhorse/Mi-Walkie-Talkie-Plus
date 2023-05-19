.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;
.super Ljava/lang/Object;
.source "SharkPresetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;->n(Lb/f/a/a/c/c;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

.field final synthetic b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;

    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;->f:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;->l2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;->f:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;->m2(Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;->f:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;->a:Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/a;->Z1(Lcom/ifengyu/intercom/device/oldDevice/model/SealSharkChannelModel;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;->f:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;

    const v0, 0x7f1103db

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a$a;->b:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;

    iget-object p1, p1, Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b$a;->f:Lcom/ifengyu/intercom/device/oldDevice/sealshark/shark/fragment/b;

    const v0, 0x7f110356

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/p/b0;->H(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method
