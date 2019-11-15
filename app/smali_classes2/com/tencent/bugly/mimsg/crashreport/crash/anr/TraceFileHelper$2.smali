.class final Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper;->readFirstDumpInfo(Ljava/lang/String;Z)Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

.field private synthetic b:Z


# direct methods
.method constructor <init>(Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

    iput-boolean p2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .locals 5

    const/4 v3, 0x0

    const-string v0, "process end %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v3
.end method

.method public final a(JJLjava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "new process %s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p5, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

    iput-wide p1, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->a:J

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

    iput-object p5, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

    iput-wide p3, v2, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->c:J

    iget-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;->b:Z

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v0, "new thread %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$2;->a:Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/crash/anr/TraceFileHelper$a;->d:Ljava/util/Map;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v2

    aput-object p4, v1, v4

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v4
.end method
