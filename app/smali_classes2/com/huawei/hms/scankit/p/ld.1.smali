.class public final Lcom/huawei/hms/scankit/p/ld;
.super Lcom/huawei/hms/scankit/p/gd;
.source "VEventResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/gd;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0}, Lcom/huawei/hms/scankit/p/kd;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private static a([Ljava/lang/String;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 3
    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/ad;->a(Ljava/lang/String;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static b(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 21
    invoke-static {p0, p1, p2, v0}, Lcom/huawei/hms/scankit/p/kd;->a(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 22
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    .line 24
    new-array p2, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 25
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    :goto_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public b(Lcom/huawei/hms/scankit/aiscan/common/x;)Lcom/huawei/hms/ml/scan/HmsScan;
    .locals 29

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/x;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VEVENT"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUMMARY"

    const/4 v2, 0x1

    .line 4
    invoke-static {v1, v0, v2}, Lcom/huawei/hms/scankit/p/ld;->a(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "LOCATION"

    .line 5
    invoke-static {v3, v0, v2}, Lcom/huawei/hms/scankit/p/ld;->a(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const-string v3, "ORGANIZER"

    .line 6
    invoke-static {v3, v0, v2}, Lcom/huawei/hms/scankit/p/ld;->a(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v3, "DESCRIPTION"

    .line 7
    invoke-static {v3, v0, v2}, Lcom/huawei/hms/scankit/p/ld;->a(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    const-string v3, "STATUS"

    .line 8
    invoke-static {v3, v0, v2}, Lcom/huawei/hms/scankit/p/ld;->a(Ljava/lang/CharSequence;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    const-string v3, "DTSTART"

    .line 9
    invoke-static {v3, v0, v2}, Lcom/huawei/hms/scankit/p/ld;->b(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "DTEND"

    .line 10
    invoke-static {v4, v0, v2}, Lcom/huawei/hms/scankit/p/ld;->b(Ljava/lang/CharSequence;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v5, Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const-string v19, ""

    move-object v11, v5

    invoke-direct/range {v11 .. v19}, Lcom/huawei/hms/ml/scan/HmsScan$EventTime;-><init>(IIIIIIZLjava/lang/String;)V

    .line 12
    new-instance v6, Lcom/huawei/hms/ml/scan/HmsScan$EventTime;

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, 0x0

    const-string v28, ""

    move-object/from16 v20, v6

    invoke-direct/range {v20 .. v28}, Lcom/huawei/hms/ml/scan/HmsScan$EventTime;-><init>(IIIIIIZLjava/lang/String;)V

    .line 13
    invoke-static {v3, v5}, Lcom/huawei/hms/scankit/p/ld;->a([Ljava/lang/String;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;)V

    .line 14
    invoke-static {v0, v6}, Lcom/huawei/hms/scankit/p/ld;->a([Ljava/lang/String;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;)V

    .line 15
    new-instance v0, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;

    move-object v3, v0

    move-object v4, v1

    invoke-direct/range {v3 .. v10}, Lcom/huawei/hms/ml/scan/HmsScan$EventInfo;-><init>(Ljava/lang/String;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;Lcom/huawei/hms/ml/scan/HmsScan$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v2, Lcom/huawei/hms/ml/scan/HmsScan;

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->b()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/scankit/p/gd;->a(Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)I

    move-result v5

    sget v7, Lcom/huawei/hms/ml/scan/HmsScan;->EVENT_INFO_FORM:I

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->g()[B

    move-result-object v8

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/scankit/p/gd;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)[Landroid/graphics/Point;

    move-result-object v9

    new-instance v11, Lcom/huawei/hms/scankit/F;

    invoke-direct {v11, v0}, Lcom/huawei/hms/scankit/F;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    move-object v3, v2

    move-object v6, v1

    invoke-direct/range {v3 .. v11}, Lcom/huawei/hms/ml/scan/HmsScan;-><init>(Ljava/lang/String;ILjava/lang/String;I[B[Landroid/graphics/Point;Lcom/huawei/hms/ml/scan/HmsScanAnalyzerOptions;Lcom/huawei/hms/scankit/F;)V

    return-object v2
.end method
