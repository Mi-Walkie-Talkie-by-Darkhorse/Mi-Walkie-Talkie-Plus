.class Lcom/mic/etoast2/a$a;
.super Landroid/os/Handler;
.source "EToast2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mic/etoast2/a;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mic/etoast2/a;


# direct methods
.method constructor <init>(Lcom/mic/etoast2/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mic/etoast2/a$a;->a:Lcom/mic/etoast2/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mic/etoast2/a$a;->a:Lcom/mic/etoast2/a;

    invoke-virtual {p1}, Lcom/mic/etoast2/a;->b()V

    return-void
.end method
