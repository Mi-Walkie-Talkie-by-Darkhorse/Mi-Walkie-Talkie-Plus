.class Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;

.field private final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b$a;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b$a;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b$a;->b:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b$a;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;)Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    move-result-object v0

    iget-object v2, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b$a;->b:Lorg/json/JSONObject;

    const-string v3, "followed_by"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b$a;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$b;)Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    return-void
.end method
