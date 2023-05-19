.class public Lcom/shanlitech/et/core/c/j;
.super Ljava/util/Observable;
.source "PocExternalMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/core/c/j$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Lcom/shanlitech/et/core/c/j;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/core/c/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/core/c/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/core/c/j;->b:Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/shanlitech/et/core/c/j;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/j;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/j;->c:Lcom/shanlitech/et/core/c/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/core/c/j;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static b()Lcom/shanlitech/et/core/c/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/j;->c:Lcom/shanlitech/et/core/c/j;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/shanlitech/et/core/c/j$a;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/shanlitech/et/core/c/j;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public c(JILjava/lang/String;[B)V
    .locals 0

    .line 1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    if-eqz p5, :cond_0

    array-length p3, p5

    if-lez p3, :cond_0

    .line 2
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p5}, Ljava/lang/String;-><init>([B)V

    .line 3
    new-instance p5, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;

    invoke-direct {p5, p4, p1, p2, p3}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p5}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->send()V

    :cond_0
    return-void
.end method

.method public d(JLjava/lang/String;)V
    .locals 5

    const-string v0, "data"

    const-string v1, "type"

    .line 1
    sget-object v2, Lcom/shanlitech/et/core/c/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotifyMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 5
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3, p1, p2, v0}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/shanlitech/et/notice/event/ExternalMsgEvent;->send()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/j;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shanlitech/et/core/c/j;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
