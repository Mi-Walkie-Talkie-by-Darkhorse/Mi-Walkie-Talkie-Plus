.class Lcom/ifengyu/intercom/ui/fragment/MyFragment$a;
.super Lcom/ifengyu/intercom/g/d/g;
.source "MyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MyFragment;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$a;->b:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/Message;I)V
    .locals 2

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "message:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/Message;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MyFragment"

    invoke-static {v0, p2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p2, p1, Lcom/ifengyu/intercom/bean/Message;->items:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/ifengyu/intercom/bean/Message;->items:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/Message$Item;

    iget-object p1, p1, Lcom/ifengyu/intercom/bean/Message$Item;->meta:Lcom/ifengyu/intercom/bean/Message$Item$Meta;

    iget-object p1, p1, Lcom/ifengyu/intercom/bean/Message$Item$Meta;->first_published_at:Ljava/lang/String;

    .line 6
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$a;->b:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "key_first_published_at"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$a;->b:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    iget-object p2, p2, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    const v1, 0x7f08018c

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$a;->b:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 10
    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "key_has_new_message"

    .line 11
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/bean/Message;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MyFragment$a;->a(Lcom/ifengyu/intercom/bean/Message;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onError:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MyFragment"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
