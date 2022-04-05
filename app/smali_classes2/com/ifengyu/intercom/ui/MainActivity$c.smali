.class Lcom/ifengyu/intercom/ui/MainActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/MainActivity;->g(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/MainActivity$c;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/ifengyu/intercom/i/d0;->c(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->p()V

    return-void
.end method
