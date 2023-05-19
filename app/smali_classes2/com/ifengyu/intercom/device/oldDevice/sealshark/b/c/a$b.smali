.class Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a$b;
.super Ljava/lang/Object;
.source "SharkInsertChannelDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "InsertChannelDialog"

    const-string p2, "EditText1 has Focus"

    .line 1
    invoke-static {p1, p2}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a$b;->a:Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;

    invoke-static {p1}, Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;->h(Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a;)Lcom/ifengyu/intercom/device/oldDevice/sealshark/b/c/a$i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
