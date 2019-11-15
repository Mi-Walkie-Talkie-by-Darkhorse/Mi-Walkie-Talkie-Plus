.class Lcom/ifengyu/intercom/ui/fragment/MyFragment$1;
.super Lcom/ifengyu/intercom/a/b/f;
.source "MyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/fragment/MyFragment;->e()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$1;->b:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/Message;I)V
    .locals 4

    const-string v0, "MyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/ifengyu/intercom/bean/Message;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/ifengyu/intercom/bean/Message;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/ifengyu/intercom/bean/Message;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/Message$Item;

    iget-object v0, v0, Lcom/ifengyu/intercom/bean/Message$Item;->meta:Lcom/ifengyu/intercom/bean/Message$Item$Meta;

    iget-object v0, v0, Lcom/ifengyu/intercom/bean/Message$Item$Meta;->first_published_at:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$1;->b:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_first_published_at"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$1;->b:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->titleBarRight:Landroid/widget/ImageView;

    const v2, 0x7f02016a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/MyFragment$1;->b:Lcom/ifengyu/intercom/ui/fragment/MyFragment;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/fragment/MyFragment;->a(Lcom/ifengyu/intercom/ui/fragment/MyFragment;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_first_published_at"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_has_new_message"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/Message;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/fragment/MyFragment$1;->a(Lcom/ifengyu/intercom/bean/Message;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 3

    const-string v0, "MyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
