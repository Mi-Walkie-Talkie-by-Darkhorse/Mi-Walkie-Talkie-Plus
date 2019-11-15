.class public final Lcom/tencent/bugly/mimsg/proguard/aq;
.super Lcom/tencent/bugly/mimsg/proguard/k;
.source "BUGLY"


# static fields
.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:B

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/mimsg/proguard/aq;->i:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/tencent/bugly/mimsg/proguard/aq;->i:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/proguard/k;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->a:J

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/mimsg/proguard/i;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->a:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/i;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->a:J

    iget-byte v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    invoke-virtual {p1, v0, v3, v3}, Lcom/tencent/bugly/mimsg/proguard/i;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/mimsg/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/mimsg/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/mimsg/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->e:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/mimsg/proguard/aq;->i:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/mimsg/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/mimsg/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->g:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->h:Z

    const/4 v0, 0x7

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/mimsg/proguard/i;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->h:Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/mimsg/proguard/j;)V
    .locals 3

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->a:J

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/mimsg/proguard/j;->a(JI)V

    iget-byte v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->b:B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(BI)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->f:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/util/Map;I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(Ljava/lang/String;I)V

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/proguard/aq;->h:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/mimsg/proguard/j;->a(ZI)V

    return-void
.end method
