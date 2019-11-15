.class Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;
.super Ljava/lang/Object;
.source "AttentionComponentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;

.field private final synthetic b:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;

    iput-object p2, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;)Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    move-result-object v0

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->b:Lorg/json/JSONObject;

    const-string v2, "followed_by"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->b(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2$1;->a:Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;

    invoke-static {v0}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView$2;)Lcom/sina/weibo/sdk/component/view/AttentionComponentView;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sina/weibo/sdk/component/view/AttentionComponentView;->a(Lcom/sina/weibo/sdk/component/view/AttentionComponentView;Z)V

    return-void
.end method
