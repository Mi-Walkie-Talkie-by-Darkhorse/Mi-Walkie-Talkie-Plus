.class Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;->a(Lb/d/a/a/c/c;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

.field final synthetic b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->b(Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;)I

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

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;->a(Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;->a:Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/setting/shark/fragment/a;->e(Lcom/ifengyu/intercom/ui/setting/SealSharkChannel;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;

    const v0, 0x7f110326

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b$a;->b:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;

    iget-object p1, p1, Lcom/ifengyu/intercom/ui/setting/shark/fragment/b$b;->e:Lcom/ifengyu/intercom/ui/setting/shark/fragment/b;

    const v0, 0x7f1102b0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method
