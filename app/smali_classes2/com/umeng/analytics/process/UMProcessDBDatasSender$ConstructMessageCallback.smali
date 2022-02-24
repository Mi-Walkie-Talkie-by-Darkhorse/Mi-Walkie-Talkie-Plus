.class Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;
.super Ljava/lang/Object;
.source "UMProcessDBDatasSender.java"

# interfaces
.implements Lcom/umeng/commonsdk/utils/FileLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/process/UMProcessDBDatasSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConstructMessageCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;


# direct methods
.method private constructor <init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;Lcom/umeng/analytics/process/UMProcessDBDatasSender$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)V

    return-void
.end method


# virtual methods
.method public onFileLock(Ljava/io/File;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-static {p1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->maxDataSpace(Landroid/content/Context;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->setupReportData(J)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "header"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "content"

    .line 4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 5
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-static {v2}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->access$000(Lcom/umeng/analytics/process/UMProcessDBDatasSender;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p1}, Lcom/umeng/commonsdk/framework/UMEnvelopeBuild;->buildEnvelopeWithExtHeader(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/umeng/analytics/process/UMProcessDBDatasSender$ConstructMessageCallback;->a:Lcom/umeng/analytics/process/UMProcessDBDatasSender;

    invoke-virtual {v1, p1}, Lcom/umeng/analytics/process/UMProcessDBDatasSender;->removeCacheData(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v0
.end method

.method public onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
