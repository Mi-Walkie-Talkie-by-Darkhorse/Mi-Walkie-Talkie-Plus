.class Lcom/ifengyu/intercom/ui/setting/seal/a$3;
.super Ljava/lang/Object;
.source "SealInsertChannelDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/seal/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/seal/a;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/seal/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "InsertChannelDialog"

    const-string v1, "EditText2 has Focus"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/seal/a$3;->a:Lcom/ifengyu/intercom/ui/setting/seal/a;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/setting/seal/a;->a(Lcom/ifengyu/intercom/ui/setting/seal/a;)Lcom/ifengyu/intercom/ui/setting/seal/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/setting/seal/a$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
