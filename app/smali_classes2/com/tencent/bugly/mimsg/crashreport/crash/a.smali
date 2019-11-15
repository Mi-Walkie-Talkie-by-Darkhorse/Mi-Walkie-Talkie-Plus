.class public final Lcom/tencent/bugly/mimsg/crashreport/crash/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/bugly/mimsg/crashreport/crash/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/a;->a:J

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/a;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/a;->c:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/a;->d:Z

    iput-boolean v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/a;->e:Z

    iput v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/a;->f:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    const-wide/16 v4, 0x0

    check-cast p1, Lcom/tencent/bugly/mimsg/crashreport/crash/a;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/a;->b:J

    iget-wide v2, p1, Lcom/tencent/bugly/mimsg/crashreport/crash/a;->b:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
