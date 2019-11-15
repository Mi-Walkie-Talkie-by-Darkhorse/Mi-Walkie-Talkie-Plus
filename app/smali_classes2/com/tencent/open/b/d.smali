.class public Lcom/tencent/open/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/open/b/d;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/open/b/d;
    .locals 2

    const-class v1, Lcom/tencent/open/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/open/b/d;->a:Lcom/tencent/open/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/open/b/d;

    invoke-direct {v0}, Lcom/tencent/open/b/d;-><init>()V

    sput-object v0, Lcom/tencent/open/b/d;->a:Lcom/tencent/open/b/d;

    :cond_0
    sget-object v0, Lcom/tencent/open/b/d;->a:Lcom/tencent/open/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;IILjava/lang/String;)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    :cond_0
    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    new-instance v11, Ljava/lang/StringBuffer;

    const-string v2, "http://c.isdspeed.qq.com/code.cgi"

    invoke-direct {v11, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "?domain=mobile.opensdk.com&cgi=opensdk&type="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&uin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "&data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p8 .. p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p9

    invoke-static/range {v2 .. v10}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/tencent/open/b/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void

    :cond_1
    move-wide v4, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p2

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p2, v2}, Lcom/tencent/open/b/g;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v6, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object/from16 v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v11}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Lcom/tencent/open/b/g;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string v7, ""

    const-string v8, ""

    move-object v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object v3, p3

    move-object v4, p2

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v11}, Lcom/tencent/open/utils/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2}, Lcom/tencent/open/b/g;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-void
.end method
