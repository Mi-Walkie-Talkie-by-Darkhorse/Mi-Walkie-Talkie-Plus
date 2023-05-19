.class public Lcom/huawei/hms/scankit/k;
.super Ljava/lang/Object;
.source "DecodeMultiCodes.java"


# static fields
.field private static a:Z = true

.field private static b:Z = false

.field private static c:Z = false

.field private static d:I

.field private static e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/huawei/hms/scankit/p/ob;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/huawei/hms/scankit/aiscan/common/p;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/huawei/hms/scankit/aiscan/common/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/k;->f:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/k;->g:Ljava/util/LinkedList;

    .line 4
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ScankitDecode"

    if-eqz v0, :cond_0

    const-string v0, "static initializer: InitModuleBegin"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "detect.ms"

    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/z;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "anchors.bin"

    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/z;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/huawei/hms/feature/DynamicModuleInitializer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "angle.ms"

    invoke-static {v0, v2}, Lcom/huawei/hms/scankit/z;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "static initializer: InitModuleEnd"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "static initializer: context null"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static a(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/E;Ljava/util/LinkedList;ZZI)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/aiscan/common/m;",
            "Lcom/huawei/hms/scankit/E;",
            "Ljava/util/LinkedList<",
            "Lcom/huawei/hms/scankit/aiscan/common/x;",
            ">;ZZI)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 165
    new-instance p4, Lcom/huawei/hms/scankit/l;

    invoke-direct {p4, p0}, Lcom/huawei/hms/scankit/l;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 166
    iget p0, p1, Lcom/huawei/hms/scankit/E;->c:I

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/Ac;->a(I)Ljava/util/List;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 167
    sget-object p1, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    invoke-static {p1, p4, p0}, Lcom/huawei/hms/scankit/k;->b(Ljava/util/List;Lcom/huawei/hms/scankit/l;Ljava/util/List;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p0

    .line 169
    :cond_0
    sget-object p1, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    invoke-static {p1, p4, p0}, Lcom/huawei/hms/scankit/k;->a(Ljava/util/List;Lcom/huawei/hms/scankit/l;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 170
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/scankit/aiscan/common/x;

    .line 171
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/huawei/hms/scankit/l;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/scankit/l;",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 51
    invoke-virtual {p0, p1, v1}, Lcom/huawei/hms/scankit/l;->e(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 53
    invoke-virtual {p0, p3, v1}, Lcom/huawei/hms/scankit/l;->c(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_5

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_5

    sget-boolean p3, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz p3, :cond_4

    sget-boolean p3, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz p3, :cond_5

    .line 55
    :cond_4
    invoke-virtual {p0, p2, v1}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    :cond_5
    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_7

    :cond_6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 57
    invoke-virtual {p0, p4, v1}, Lcom/huawei/hms/scankit/l;->b(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    :cond_7
    return-object p1
.end method

.method public static a(Ljava/util/List;Lcom/huawei/hms/scankit/l;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;",
            "Lcom/huawei/hms/scankit/l;",
            ")",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p1, p0, v1}, Lcom/huawei/hms/scankit/l;->d(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static a(Ljava/util/List;Lcom/huawei/hms/scankit/l;Ljava/util/List;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/ob;",
            ">;",
            "Lcom/huawei/hms/scankit/l;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/x;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 58
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    .line 59
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x2

    .line 60
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x3

    .line 61
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x4

    .line 62
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 63
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 64
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    if-ge v9, v10, :cond_15

    .line 65
    iget-object v10, v0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    invoke-virtual {v10}, Lcom/huawei/hms/scankit/aiscan/common/l;->a()V

    move-object/from16 v10, p0

    .line 66
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huawei/hms/scankit/p/ob;

    .line 67
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v13

    const/high16 v14, 0x40a00000    # 5.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    .line 68
    :goto_1
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v14

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-nez v14, :cond_1

    const/4 v14, 0x1

    goto :goto_2

    :cond_1
    const/4 v14, 0x0

    .line 69
    :goto_2
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v16

    const/high16 v17, 0x40400000    # 3.0f

    cmpl-float v16, v16, v17

    if-nez v16, :cond_2

    const/16 v16, 0x1

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    .line 70
    :goto_3
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    cmpl-float v17, v17, v18

    if-nez v17, :cond_3

    const/16 v17, 0x1

    goto :goto_4

    :cond_3
    const/16 v17, 0x0

    .line 71
    :goto_4
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v19

    const/high16 v20, 0x40800000    # 4.0f

    cmpl-float v19, v19, v20

    if-nez v19, :cond_4

    const/16 v19, 0x1

    goto :goto_5

    :cond_4
    const/16 v19, 0x0

    .line 72
    :goto_5
    sget-boolean v20, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-eqz v20, :cond_a

    .line 73
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v13

    cmpl-float v13, v13, v15

    if-nez v13, :cond_5

    const/4 v13, 0x1

    goto :goto_6

    :cond_5
    const/4 v13, 0x0

    .line 74
    :goto_6
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v14

    cmpl-float v14, v14, v18

    if-nez v14, :cond_6

    const/4 v14, 0x1

    goto :goto_7

    :cond_6
    const/4 v14, 0x0

    .line 75
    :goto_7
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v16

    cmpl-float v16, v16, v18

    if-nez v16, :cond_7

    const/16 v16, 0x1

    goto :goto_8

    :cond_7
    const/16 v16, 0x0

    .line 76
    :goto_8
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v17

    cmpl-float v15, v17, v15

    if-nez v15, :cond_8

    const/16 v19, 0x1

    goto :goto_9

    :cond_8
    const/16 v19, 0x0

    .line 77
    :goto_9
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v15

    cmpl-float v15, v15, v18

    if-nez v15, :cond_9

    const/16 v17, 0x1

    goto :goto_a

    :cond_9
    const/16 v17, 0x0

    .line 78
    :cond_a
    :goto_a
    invoke-virtual {v0, v12}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/ob;)V

    .line 79
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_b

    if-eqz v14, :cond_b

    .line 80
    invoke-virtual {v0, v3, v12}, Lcom/huawei/hms/scankit/l;->d(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v11

    :cond_b
    if-eqz v11, :cond_c

    .line 81
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    :cond_c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_d

    if-eqz v16, :cond_d

    .line 82
    invoke-virtual {v0, v7, v12}, Lcom/huawei/hms/scankit/l;->b(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v11

    :cond_d
    if-eqz v11, :cond_e

    .line 83
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_f

    :cond_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_f

    if-eqz v19, :cond_f

    .line 84
    invoke-virtual {v0, v6, v12}, Lcom/huawei/hms/scankit/l;->c(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v11

    :cond_f
    if-eqz v11, :cond_10

    .line 85
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_11

    :cond_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_11

    if-eqz v17, :cond_11

    .line 86
    invoke-virtual {v0, v1, v12}, Lcom/huawei/hms/scankit/l;->b(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v11

    :cond_11
    if-eqz v11, :cond_12

    .line 87
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_13

    :cond_12
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_13

    if-eqz v13, :cond_13

    .line 88
    invoke-virtual {v0, v5, v12}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v11

    :cond_13
    if-eqz v11, :cond_14

    .line 89
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_14

    .line 90
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 91
    :cond_15
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 92
    invoke-virtual {v0, v3, v11}, Lcom/huawei/hms/scankit/l;->f(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 93
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 94
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    return-object v8
.end method

.method private static a()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    sput-boolean v0, Lcom/huawei/hms/scankit/k;->c:Z

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/k;->f:Ljava/util/LinkedList;

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/k;->g:Ljava/util/LinkedList;

    return-void
.end method

.method private static a(Lcom/huawei/hms/scankit/aiscan/common/m;IILcom/huawei/hms/scankit/E;)V
    .locals 10

    .line 155
    invoke-static {p3}, Lcom/huawei/hms/scankit/p/Bc;->a(Lcom/huawei/hms/scankit/E;)V

    .line 156
    new-instance v9, Lcom/huawei/hms/scankit/aiscan/common/r;

    iget v0, p3, Lcom/huawei/hms/scankit/E;->a:I

    iget v1, p3, Lcom/huawei/hms/scankit/E;->b:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/huawei/hms/scankit/aiscan/common/m;->a(IIII)Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/m;->b()[B

    move-result-object v1

    iget v6, p3, Lcom/huawei/hms/scankit/E;->a:I

    iget v7, p3, Lcom/huawei/hms/scankit/E;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    .line 158
    new-instance p0, Lcom/huawei/hms/scankit/l;

    invoke-direct {p0, v9}, Lcom/huawei/hms/scankit/l;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 159
    sget-boolean p1, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/huawei/hms/scankit/l;->a(IZ)Ljava/util/List;

    move-result-object p0

    .line 160
    iget-boolean p1, p3, Lcom/huawei/hms/scankit/E;->j:Z

    if-nez p1, :cond_0

    .line 161
    invoke-static {p0, p3}, Lcom/huawei/hms/scankit/k;->a(Ljava/util/List;Lcom/huawei/hms/scankit/E;)V

    .line 162
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/scankit/p/ob;

    .line 163
    iget p2, p3, Lcom/huawei/hms/scankit/E;->h:I

    int-to-float p2, p2

    iget v0, p3, Lcom/huawei/hms/scankit/E;->i:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/scankit/p/ob;->a(FF)V

    .line 164
    sget-object p2, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Ljava/util/List;Lcom/huawei/hms/scankit/E;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/ob;",
            ">;",
            "Lcom/huawei/hms/scankit/E;",
            ")V"
        }
    .end annotation

    .line 172
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/p/ob;

    .line 173
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->d()F

    move-result v1

    iget v2, p1, Lcom/huawei/hms/scankit/E;->a:I

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float v2, v2, v3

    const v4, 0x3f666666    # 0.9f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 174
    sget-object v1, Lcom/huawei/hms/scankit/k;->f:Ljava/util/LinkedList;

    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/p;

    iget v5, p1, Lcom/huawei/hms/scankit/E;->h:I

    invoke-direct {v2, v0, v5}, Lcom/huawei/hms/scankit/aiscan/common/p;-><init>(Lcom/huawei/hms/scankit/p/ob;I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->d()F

    move-result v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->f()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p1, Lcom/huawei/hms/scankit/E;->a:I

    int-to-float v5, v2

    mul-float v5, v5, v4

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    .line 176
    sget-object v1, Lcom/huawei/hms/scankit/k;->f:Ljava/util/LinkedList;

    new-instance v5, Lcom/huawei/hms/scankit/aiscan/common/p;

    iget v6, p1, Lcom/huawei/hms/scankit/E;->h:I

    add-int/2addr v6, v2

    invoke-direct {v5, v0, v6}, Lcom/huawei/hms/scankit/aiscan/common/p;-><init>(Lcom/huawei/hms/scankit/p/ob;I)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 177
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->e()F

    move-result v1

    iget v2, p1, Lcom/huawei/hms/scankit/E;->b:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 178
    sget-object v1, Lcom/huawei/hms/scankit/k;->g:Ljava/util/LinkedList;

    new-instance v2, Lcom/huawei/hms/scankit/aiscan/common/p;

    iget v3, p1, Lcom/huawei/hms/scankit/E;->i:I

    invoke-direct {v2, v0, v3}, Lcom/huawei/hms/scankit/aiscan/common/p;-><init>(Lcom/huawei/hms/scankit/p/ob;I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->e()F

    move-result v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ob;->c()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p1, Lcom/huawei/hms/scankit/E;->b:I

    int-to-float v3, v2

    mul-float v3, v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 180
    sget-object v1, Lcom/huawei/hms/scankit/k;->g:Ljava/util/LinkedList;

    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/p;

    iget v4, p1, Lcom/huawei/hms/scankit/E;->i:I

    add-int/2addr v4, v2

    invoke-direct {v3, v0, v4}, Lcom/huawei/hms/scankit/aiscan/common/p;-><init>(Lcom/huawei/hms/scankit/p/ob;I)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 95
    sput-boolean p0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 10

    const-string v0, "exception"

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p1, Lcom/huawei/hms/scankit/E;->a:I

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iput v9, p1, Lcom/huawei/hms/scankit/E;->b:I

    .line 5
    iget v8, p1, Lcom/huawei/hms/scankit/E;->a:I

    mul-int v1, v8, v9

    new-array v1, v1, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v5, v8

    .line 6
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 7
    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/s;

    iget v2, p1, Lcom/huawei/hms/scankit/E;->a:I

    iget v3, p1, Lcom/huawei/hms/scankit/E;->b:I

    invoke-direct {p0, v2, v3, v1}, Lcom/huawei/hms/scankit/aiscan/common/s;-><init>(II[I)V

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/s;->b()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "OutOfMemoryError"

    .line 8
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "Exception"

    .line 9
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p0, "UnsatisfiedLinkError"

    .line 10
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string p0, "UnsupportedArgumentException"

    .line 11
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    const-string p0, "IllegalArgumentException"

    .line 12
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    .line 13
    :goto_1
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/k;->a([BLcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 8

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Bc;->a(Lcom/huawei/hms/scankit/E;)V

    const/4 v1, 0x1

    .line 31
    invoke-static {v1}, Lcom/huawei/hms/scankit/p/Bc;->a(I)V

    .line 32
    iget v2, p1, Lcom/huawei/hms/scankit/E;->a:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_4

    iget v2, p1, Lcom/huawei/hms/scankit/E;->b:I

    if-lt v2, v3, :cond_4

    if-eqz p0, :cond_4

    .line 33
    iget p1, p1, Lcom/huawei/hms/scankit/E;->c:I

    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Ac;->a(I)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    .line 34
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x2

    .line 36
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x3

    .line 37
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 38
    new-instance v7, Lcom/huawei/hms/scankit/l;

    invoke-direct {v7, p0}, Lcom/huawei/hms/scankit/l;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 39
    sget-boolean p0, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    invoke-virtual {v7, v1, p0}, Lcom/huawei/hms/scankit/l;->a(IZ)Ljava/util/List;

    move-result-object p0

    .line 40
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 41
    invoke-static {p0, v7, p1}, Lcom/huawei/hms/scankit/k;->a(Ljava/util/List;Lcom/huawei/hms/scankit/l;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_0
    sget-boolean p0, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-nez p0, :cond_2

    .line 43
    :cond_1
    invoke-static {v7, v3, v4, v5, v6}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/l;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 45
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/huawei/hms/scankit/aiscan/common/E;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 47
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    new-array p1, v2, [Lcom/huawei/hms/scankit/aiscan/common/x;

    .line 48
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/huawei/hms/scankit/aiscan/common/x;

    return-object p0

    :cond_3
    new-array p0, v2, [Lcom/huawei/hms/scankit/aiscan/common/x;

    return-object p0

    .line 49
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "width or Height is Illeagle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 0

    .line 14
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/k;->a([BLcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    return-object p0
.end method

.method public static a([BLcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 14

    const-string v0, "exception"

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/huawei/hms/scankit/aiscan/common/x;

    .line 15
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/huawei/hms/scankit/k;->a([BLcom/huawei/hms/scankit/E;Z)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    .line 16
    array-length p1, p0

    new-array v3, p1, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 17
    :goto_0
    array-length v6, p0

    const/4 v7, 0x1

    if-ge v4, v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    move v8, v6

    .line 18
    :goto_1
    array-length v9, p0

    if-ge v8, v9, :cond_1

    .line 19
    aget-object v9, p0, v4

    invoke-virtual {v9}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v9

    aget-object v10, p0, v8

    invoke-virtual {v10}, Lcom/huawei/hms/scankit/aiscan/common/x;->h()[Lcom/huawei/hms/scankit/aiscan/common/z;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/huawei/hms/scankit/aiscan/common/E;->a([Lcom/huawei/hms/scankit/aiscan/common/z;[Lcom/huawei/hms/scankit/aiscan/common/z;)F

    move-result v9

    float-to-double v9, v9

    const-wide v11, 0x3fe6666666666666L    # 0.7

    cmpl-double v13, v9, v11

    if-lez v13, :cond_0

    .line 20
    aput v7, v3, v8

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_0

    .line 21
    :cond_2
    array-length v4, p0

    sub-int/2addr v4, v5

    new-array v2, v4, [Lcom/huawei/hms/scankit/aiscan/common/x;

    :goto_2
    if-ge v1, v4, :cond_4

    move v5, v1

    :goto_3
    if-ge v5, p1, :cond_3

    .line 22
    aget v6, v3, v5

    if-ne v6, v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 23
    :cond_3
    aget-object v5, p0, v5

    aput-object v5, v2, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    const-string p0, "OutOfMemoryError"

    .line 24
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    const-string p0, "Exception"

    .line 25
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    const-string p0, "UnsatisfiedLinkError"

    .line 26
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    const-string p0, "UnsupportedArgumentException"

    .line 27
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_4
    const-string p0, "IllegalArgumentException"

    .line 28
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    return-object v2
.end method

.method public static a([BLcom/huawei/hms/scankit/E;Z)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 11

    .line 100
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 101
    invoke-static {}, Lcom/huawei/hms/scankit/k;->a()V

    .line 102
    iget v0, p1, Lcom/huawei/hms/scankit/E;->a:I

    iget v1, p1, Lcom/huawei/hms/scankit/E;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 103
    iget v1, p1, Lcom/huawei/hms/scankit/E;->a:I

    iget v2, p1, Lcom/huawei/hms/scankit/E;->b:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    const v3, 0x3fe3d70a    # 1.78f

    mul-float v2, v2, v3

    float-to-int v7, v2

    .line 104
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/k;->c([BLcom/huawei/hms/scankit/E;)Lcom/huawei/hms/scankit/aiscan/common/m;

    move-result-object p0

    .line 105
    new-instance v8, Lcom/huawei/hms/scankit/E;

    invoke-direct {v8, p1}, Lcom/huawei/hms/scankit/E;-><init>(Lcom/huawei/hms/scankit/E;)V

    const/high16 v2, 0x40400000    # 3.0f

    const/16 v3, 0x1f4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-le v0, v3, :cond_6

    .line 106
    iget v4, p1, Lcom/huawei/hms/scankit/E;->a:I

    iget v5, p1, Lcom/huawei/hms/scankit/E;->b:I

    if-lt v4, v5, :cond_6

    iget-boolean v4, p1, Lcom/huawei/hms/scankit/E;->e:Z

    if-eqz v4, :cond_6

    cmpl-float v4, v1, v2

    if-lez v4, :cond_6

    .line 107
    sput-boolean v9, Lcom/huawei/hms/scankit/k;->c:Z

    .line 108
    iput v7, v8, Lcom/huawei/hms/scankit/E;->a:I

    .line 109
    iget v0, p1, Lcom/huawei/hms/scankit/E;->a:I

    sub-int/2addr v0, v9

    :goto_0
    if-ltz v0, :cond_1

    sub-int/2addr v0, v7

    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 110
    :goto_1
    iput v1, v8, Lcom/huawei/hms/scankit/E;->h:I

    .line 111
    iput v10, v8, Lcom/huawei/hms/scankit/E;->i:I

    .line 112
    invoke-static {p0, v1, v10, v8}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/aiscan/common/m;IILcom/huawei/hms/scankit/E;)V

    goto :goto_0

    .line 113
    :cond_1
    sget-object v0, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object v2, v6

    move v3, p2

    move v5, v7

    .line 114
    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/E;Ljava/util/LinkedList;ZZI)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    if-eqz v0, :cond_2

    new-array p0, v9, [Lcom/huawei/hms/scankit/aiscan/common/x;

    aput-object v0, p0, v10

    return-object p0

    .line 115
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    .line 116
    sget-object v0, Lcom/huawei/hms/scankit/k;->f:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    sget-object v1, Lcom/huawei/hms/scankit/k;->f:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/aiscan/common/p;

    .line 119
    iget v3, v2, Lcom/huawei/hms/scankit/aiscan/common/p;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v2, v2, Lcom/huawei/hms/scankit/aiscan/common/p;->b:I

    if-lt v2, v7, :cond_3

    iget v3, p1, Lcom/huawei/hms/scankit/E;->a:I

    sub-int/2addr v3, v9

    sub-int/2addr v3, v7

    if-le v2, v3, :cond_4

    goto :goto_2

    .line 120
    :cond_4
    iput v7, v8, Lcom/huawei/hms/scankit/E;->a:I

    .line 121
    iput-boolean v9, v8, Lcom/huawei/hms/scankit/E;->j:Z

    .line 122
    div-int/lit8 v3, v7, 0x2

    sub-int/2addr v2, v3

    .line 123
    iput v2, v8, Lcom/huawei/hms/scankit/E;->h:I

    .line 124
    iput v10, v8, Lcom/huawei/hms/scankit/E;->i:I

    .line 125
    invoke-static {p0, v2, v10, v8}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/aiscan/common/m;IILcom/huawei/hms/scankit/E;)V

    goto :goto_2

    .line 126
    :cond_5
    sget-object p1, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, v8

    move-object v2, v6

    move v3, p2

    move v5, v7

    .line 127
    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/E;Ljava/util/LinkedList;ZZI)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    if-eqz p0, :cond_d

    new-array p1, v9, [Lcom/huawei/hms/scankit/aiscan/common/x;

    aput-object p0, p1, v10

    return-object p1

    :cond_6
    if-le v0, v3, :cond_e

    .line 128
    iget-boolean v0, p1, Lcom/huawei/hms/scankit/E;->e:Z

    if-eqz v0, :cond_e

    cmpl-float v0, v1, v2

    if-lez v0, :cond_e

    .line 129
    sput-boolean v9, Lcom/huawei/hms/scankit/k;->c:Z

    .line 130
    iput v7, v8, Lcom/huawei/hms/scankit/E;->b:I

    .line 131
    iget v0, p1, Lcom/huawei/hms/scankit/E;->b:I

    sub-int/2addr v0, v9

    :goto_3
    if-ltz v0, :cond_8

    sub-int/2addr v0, v7

    if-ltz v0, :cond_7

    move v1, v0

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 132
    :goto_4
    iput v10, v8, Lcom/huawei/hms/scankit/E;->h:I

    .line 133
    iput v1, v8, Lcom/huawei/hms/scankit/E;->i:I

    .line 134
    invoke-static {p0, v10, v1, v8}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/aiscan/common/m;IILcom/huawei/hms/scankit/E;)V

    goto :goto_3

    .line 135
    :cond_8
    sget-object v0, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move v3, p2

    move v5, v7

    .line 136
    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/E;Ljava/util/LinkedList;ZZI)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    if-eqz v0, :cond_9

    new-array p0, v9, [Lcom/huawei/hms/scankit/aiscan/common/x;

    aput-object v0, p0, v10

    return-object p0

    .line 137
    :cond_9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    .line 138
    sget-object v0, Lcom/huawei/hms/scankit/k;->g:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 140
    sget-object v1, Lcom/huawei/hms/scankit/k;->g:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/aiscan/common/p;

    .line 141
    iget v3, v2, Lcom/huawei/hms/scankit/aiscan/common/p;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v2, v2, Lcom/huawei/hms/scankit/aiscan/common/p;->b:I

    if-lt v2, v7, :cond_a

    iget v3, p1, Lcom/huawei/hms/scankit/E;->b:I

    sub-int/2addr v3, v9

    sub-int/2addr v3, v7

    if-le v2, v3, :cond_b

    goto :goto_5

    .line 142
    :cond_b
    div-int/lit8 v3, v7, 0x2

    sub-int/2addr v2, v3

    .line 143
    iput v7, v8, Lcom/huawei/hms/scankit/E;->b:I

    .line 144
    iput-boolean v9, v8, Lcom/huawei/hms/scankit/E;->j:Z

    .line 145
    iput v10, v8, Lcom/huawei/hms/scankit/E;->h:I

    .line 146
    iput v2, v8, Lcom/huawei/hms/scankit/E;->i:I

    .line 147
    invoke-static {p0, v10, v2, v8}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/aiscan/common/m;IILcom/huawei/hms/scankit/E;)V

    goto :goto_5

    .line 148
    :cond_c
    sget-object v0, Lcom/huawei/hms/scankit/k;->e:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move v3, p2

    move v5, v7

    .line 149
    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/E;Ljava/util/LinkedList;ZZI)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    if-eqz p0, :cond_d

    new-array p1, v9, [Lcom/huawei/hms/scankit/aiscan/common/x;

    aput-object p0, p1, v10

    return-object p1

    .line 150
    :cond_d
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result p0

    new-array p0, p0, [Lcom/huawei/hms/scankit/aiscan/common/x;

    .line 151
    invoke-virtual {v6, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0

    .line 152
    :cond_e
    sput-boolean v10, Lcom/huawei/hms/scankit/k;->c:Z

    if-eqz p2, :cond_f

    .line 153
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/k;->b(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    return-object p0

    .line 154
    :cond_f
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/k;->a(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/List;Lcom/huawei/hms/scankit/l;Ljava/util/List;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/ob;",
            ">;",
            "Lcom/huawei/hms/scankit/l;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    .line 78
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x2

    .line 79
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x3

    .line 80
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x4

    .line 81
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 82
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_17

    if-lez v9, :cond_0

    .line 83
    iget-object v10, v0, Lcom/huawei/hms/scankit/l;->i:Lcom/huawei/hms/scankit/aiscan/common/l;

    invoke-virtual {v10}, Lcom/huawei/hms/scankit/aiscan/common/l;->a()V

    :cond_0
    move-object/from16 v10, p0

    .line 84
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/huawei/hms/scankit/p/ob;

    .line 85
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v12

    const/high16 v13, 0x40a00000    # 5.0f

    cmpl-float v12, v12, v13

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 86
    :goto_1
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    .line 87
    :goto_2
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    cmpl-float v15, v15, v16

    if-nez v15, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 88
    :goto_3
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v17

    const/high16 v18, 0x40400000    # 3.0f

    cmpl-float v17, v17, v18

    if-nez v17, :cond_4

    const/16 v17, 0x1

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    .line 89
    :goto_4
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v18

    const/high16 v19, 0x40800000    # 4.0f

    cmpl-float v18, v18, v19

    if-nez v18, :cond_5

    const/16 v18, 0x1

    goto :goto_5

    :cond_5
    const/16 v18, 0x0

    .line 90
    :goto_5
    sget-boolean v19, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-eqz v19, :cond_b

    .line 91
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v12

    cmpl-float v12, v12, v14

    if-nez v12, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    .line 92
    :goto_6
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v13

    cmpl-float v13, v13, v16

    if-nez v13, :cond_7

    const/4 v13, 0x1

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    .line 93
    :goto_7
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v15

    cmpl-float v15, v15, v16

    if-nez v15, :cond_8

    const/4 v15, 0x1

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    .line 94
    :goto_8
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v17

    cmpl-float v16, v17, v16

    if-nez v16, :cond_9

    const/16 v17, 0x1

    goto :goto_9

    :cond_9
    const/16 v17, 0x0

    .line 95
    :goto_9
    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/ob;->g()F

    move-result v16

    cmpl-float v14, v16, v14

    if-nez v14, :cond_a

    const/16 v18, 0x1

    goto :goto_a

    :cond_a
    const/16 v18, 0x0

    .line 96
    :cond_b
    :goto_a
    invoke-virtual {v0, v11}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/p/ob;)V

    if-eqz v8, :cond_c

    .line 97
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    :cond_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_d

    if-eqz v13, :cond_d

    .line 98
    sput-boolean v4, Lcom/huawei/hms/scankit/k;->b:Z

    .line 99
    invoke-virtual {v0, v3, v11}, Lcom/huawei/hms/scankit/l;->d(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v8

    :cond_d
    if-eqz v8, :cond_e

    .line 100
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_f

    :cond_e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_f

    if-eqz v17, :cond_f

    .line 101
    invoke-virtual {v0, v7, v11}, Lcom/huawei/hms/scankit/l;->b(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v8

    :cond_f
    if-eqz v8, :cond_10

    .line 102
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_11

    :cond_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_11

    if-eqz v15, :cond_11

    .line 103
    invoke-virtual {v0, v1, v11}, Lcom/huawei/hms/scankit/l;->b(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v8

    :cond_11
    if-eqz v8, :cond_12

    .line 104
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_13

    :cond_12
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_13

    if-eqz v18, :cond_13

    .line 105
    invoke-virtual {v0, v6, v11}, Lcom/huawei/hms/scankit/l;->c(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v8

    :cond_13
    if-eqz v8, :cond_14

    .line 106
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_15

    :cond_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_15

    if-eqz v12, :cond_15

    .line 107
    invoke-virtual {v0, v5, v11}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v8

    :cond_15
    if-eqz v8, :cond_16

    .line 108
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_16

    goto :goto_b

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_17
    :goto_b
    return-object v8
.end method

.method public static b(Landroid/graphics/Bitmap;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 10

    const-string v0, "exception"

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p1, Lcom/huawei/hms/scankit/E;->a:I

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iput v9, p1, Lcom/huawei/hms/scankit/E;->b:I

    .line 3
    iget v8, p1, Lcom/huawei/hms/scankit/E;->a:I

    mul-int v1, v8, v9

    new-array v1, v1, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v5, v8

    .line 4
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 5
    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/s;

    iget v2, p1, Lcom/huawei/hms/scankit/E;->a:I

    iget v3, p1, Lcom/huawei/hms/scankit/E;->b:I

    invoke-direct {p0, v2, v3, v1}, Lcom/huawei/hms/scankit/aiscan/common/s;-><init>(II[I)V

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/s;->b()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "OutOfMemoryError"

    .line 6
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "Exception"

    .line 7
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p0, "UnsatisfiedLinkError"

    .line 8
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string p0, "UnsupportedArgumentException"

    .line 9
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    const-string p0, "IllegalArgumentException"

    .line 10
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    .line 11
    :goto_1
    invoke-static {p0, p1}, Lcom/huawei/hms/scankit/k;->b([BLcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/huawei/hms/scankit/aiscan/common/m;Lcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "ScankitDecode"

    const-string v3, "scankit mode:LITESDK1"

    .line 18
    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/Bc;->a(Lcom/huawei/hms/scankit/E;)V

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget v4, v1, Lcom/huawei/hms/scankit/E;->a:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_1b

    iget v4, v1, Lcom/huawei/hms/scankit/E;->b:I

    if-lt v4, v5, :cond_1b

    if-eqz v0, :cond_1b

    .line 22
    iget v4, v1, Lcom/huawei/hms/scankit/E;->c:I

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/Ac;->a(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 23
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x1

    .line 24
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x2

    .line 25
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x3

    .line 26
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x4

    .line 27
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 28
    new-instance v13, Lcom/huawei/hms/scankit/l;

    invoke-direct {v13, v0}, Lcom/huawei/hms/scankit/l;-><init>(Lcom/huawei/hms/scankit/aiscan/common/m;)V

    .line 29
    sget-boolean v0, Lcom/huawei/hms/scankit/k;->a:Z

    const/4 v14, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/huawei/hms/scankit/k;->c:Z

    if-nez v0, :cond_0

    .line 30
    invoke-static {v6, v13}, Lcom/huawei/hms/scankit/k;->a(Ljava/util/List;Lcom/huawei/hms/scankit/l;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v14

    :goto_0
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_2

    .line 32
    :cond_1
    sget-boolean v3, Lcom/huawei/hms/scankit/p/Bc;->l:Z

    invoke-virtual {v13, v5, v3}, Lcom/huawei/hms/scankit/l;->a(IZ)Ljava/util/List;

    move-result-object v3

    .line 33
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 34
    invoke-static {v3, v13, v4}, Lcom/huawei/hms/scankit/k;->b(Ljava/util/List;Lcom/huawei/hms/scankit/l;Ljava/util/List;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    goto :goto_1

    .line 35
    :cond_3
    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->b:Z

    if-eqz v4, :cond_d

    :cond_4
    if-eqz v0, :cond_5

    .line 36
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 37
    invoke-virtual {v13, v9, v14}, Lcom/huawei/hms/scankit/l;->c(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    :cond_6
    if-eqz v0, :cond_7

    .line 38
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->a:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    if-eqz v4, :cond_9

    .line 39
    :cond_8
    invoke-virtual {v13, v8, v14}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 40
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_a
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 41
    invoke-virtual {v13, v12, v14}, Lcom/huawei/hms/scankit/l;->b(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    :cond_b
    if-eqz v0, :cond_c

    .line 42
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_d

    :cond_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 43
    invoke-virtual {v13, v11, v14}, Lcom/huawei/hms/scankit/l;->b(Ljava/util/List;Lcom/huawei/hms/scankit/p/ob;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    .line 44
    :cond_d
    :goto_1
    iget-boolean v1, v1, Lcom/huawei/hms/scankit/E;->e:Z

    if-eqz v1, :cond_f

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    :cond_e
    sget-boolean v1, Lcom/huawei/hms/scankit/k;->a:Z

    if-nez v1, :cond_f

    sget-boolean v1, Lcom/huawei/hms/scankit/k;->b:Z

    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/huawei/hms/scankit/k;->c:Z

    if-nez v1, :cond_f

    .line 45
    invoke-static {v6, v13}, Lcom/huawei/hms/scankit/k;->a(Ljava/util/List;Lcom/huawei/hms/scankit/l;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v0

    .line 46
    sput-boolean v5, Lcom/huawei/hms/scankit/k;->b:Z

    .line 47
    :cond_f
    sget-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->c:Z

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_15

    .line 48
    invoke-virtual {v13}, Lcom/huawei/hms/scankit/l;->a()Z

    move-result v1

    .line 49
    sget v6, Lcom/huawei/hms/scankit/p/Bc;->g:I

    sub-int/2addr v6, v7

    if-lez v6, :cond_10

    goto :goto_2

    :cond_10
    const/4 v6, 0x0

    :goto_2
    sput v6, Lcom/huawei/hms/scankit/p/Bc;->g:I

    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_13

    if-nez v1, :cond_12

    .line 51
    invoke-virtual {v13, v3}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_3

    :cond_11
    const/4 v1, 0x0

    goto :goto_4

    :cond_12
    :goto_3
    const/4 v1, 0x1

    .line 52
    :cond_13
    :goto_4
    invoke-virtual {v13}, Lcom/huawei/hms/scankit/l;->d()F

    move-result v6

    const/4 v8, 0x0

    cmpl-float v6, v6, v8

    if-lez v6, :cond_14

    .line 53
    invoke-virtual {v13}, Lcom/huawei/hms/scankit/l;->d()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    goto :goto_5

    .line 54
    :cond_14
    invoke-virtual {v13}, Lcom/huawei/hms/scankit/l;->b()F

    move-result v6

    invoke-virtual {v13}, Lcom/huawei/hms/scankit/l;->c()F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 55
    :goto_5
    invoke-static {v3, v13}, Lcom/huawei/hms/scankit/l;->a(Ljava/util/List;Lcom/huawei/hms/scankit/l;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v14

    .line 56
    invoke-static {v13}, Lcom/huawei/hms/scankit/l;->a(Lcom/huawei/hms/scankit/l;)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v6

    move-object/from16 v16, v14

    move-object v14, v6

    move-object/from16 v6, v16

    goto :goto_6

    :cond_15
    move-object v6, v14

    const/4 v1, 0x0

    :goto_6
    if-eqz v14, :cond_16

    .line 57
    invoke-virtual {v14}, Lcom/huawei/hms/scankit/aiscan/common/x;->f()I

    move-result v8

    const/4 v9, -0x2

    if-ne v8, v9, :cond_16

    .line 58
    sget v8, Lcom/huawei/hms/scankit/k;->d:I

    add-int/2addr v8, v7

    sput v8, Lcom/huawei/hms/scankit/k;->d:I

    goto :goto_7

    .line 59
    :cond_16
    sput v5, Lcom/huawei/hms/scankit/k;->d:I

    :goto_7
    if-eqz v0, :cond_17

    .line 60
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->i()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_17

    const-string v1, "ScanCode successful"

    .line 61
    invoke-static {v2, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sput v5, Lcom/huawei/hms/scankit/k;->d:I

    new-array v1, v7, [Lcom/huawei/hms/scankit/aiscan/common/x;

    aput-object v0, v1, v5

    return-object v1

    :cond_17
    if-eqz v1, :cond_18

    const-string v0, "ScanCode need zoom"

    .line 63
    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/huawei/hms/scankit/aiscan/common/x;

    invoke-direct {v0, v4}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(F)V

    .line 65
    invoke-virtual {v0, v7}, Lcom/huawei/hms/scankit/aiscan/common/x;->b(Z)V

    .line 66
    sput v5, Lcom/huawei/hms/scankit/k;->d:I

    new-array v1, v7, [Lcom/huawei/hms/scankit/aiscan/common/x;

    aput-object v0, v1, v5

    return-object v1

    .line 67
    :cond_18
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_19

    if-eqz v6, :cond_19

    const-string v0, "ScanCode need exposure"

    .line 68
    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sput v5, Lcom/huawei/hms/scankit/k;->d:I

    new-array v0, v7, [Lcom/huawei/hms/scankit/aiscan/common/x;

    aput-object v6, v0, v5

    return-object v0

    :cond_19
    if-eqz v14, :cond_1a

    .line 70
    sget v0, Lcom/huawei/hms/scankit/k;->d:I

    if-ne v0, v10, :cond_1a

    .line 71
    invoke-virtual {v14, v7}, Lcom/huawei/hms/scankit/aiscan/common/x;->a(Z)V

    const/4 v0, -0x1

    .line 72
    invoke-virtual {v14, v0}, Lcom/huawei/hms/scankit/aiscan/common/x;->a(I)V

    const-string v0, "ScanCode need globalexposure"

    .line 73
    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sput v5, Lcom/huawei/hms/scankit/k;->d:I

    new-array v0, v7, [Lcom/huawei/hms/scankit/aiscan/common/x;

    aput-object v14, v0, v5

    return-object v0

    :cond_1a
    const-string v0, "ScanCode null"

    .line 75
    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v5, [Lcom/huawei/hms/scankit/aiscan/common/x;

    return-object v0

    .line 76
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "widthOrHeight is Illeagle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b([BLcom/huawei/hms/scankit/E;)[Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 3

    const-string v0, "exception"

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/huawei/hms/scankit/aiscan/common/x;

    const/4 v2, 0x1

    .line 12
    :try_start_0
    invoke-static {p0, p1, v2}, Lcom/huawei/hms/scankit/k;->a([BLcom/huawei/hms/scankit/E;Z)[Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OutOfMemoryError"

    .line 13
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "Exception"

    .line 14
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p0, "UnsatisfiedLinkError"

    .line 15
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    const-string p0, "UnsupportedArgumentException"

    .line 16
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    const-string p0, "IllegalArgumentException"

    .line 17
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method private static c([BLcom/huawei/hms/scankit/E;)Lcom/huawei/hms/scankit/aiscan/common/m;
    .locals 10

    .line 1
    iget v7, p1, Lcom/huawei/hms/scankit/E;->a:I

    .line 2
    iget v8, p1, Lcom/huawei/hms/scankit/E;->b:I

    .line 3
    iget-boolean v0, p1, Lcom/huawei/hms/scankit/E;->d:Z

    if-eqz v0, :cond_2

    mul-int v0, v7, v8

    .line 4
    new-array v1, v0, [B

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_0

    mul-int v4, v3, v8

    add-int/2addr v4, v8

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    mul-int v5, v2, v7

    add-int/2addr v5, v3

    .line 5
    aget-byte v5, p0, v5

    aput-byte v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iput v8, p1, Lcom/huawei/hms/scankit/E;->a:I

    .line 7
    iput v7, p1, Lcom/huawei/hms/scankit/E;->b:I

    .line 8
    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/r;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 p1, 0x0

    move-object v0, p0

    move v2, v8

    move v3, v7

    move v6, v8

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    goto :goto_2

    .line 9
    :cond_2
    new-instance p1, Lcom/huawei/hms/scankit/aiscan/common/r;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p0

    move v2, v7

    move v3, v8

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/huawei/hms/scankit/aiscan/common/r;-><init>([BIIIIIIZ)V

    move-object p0, p1

    :goto_2
    return-object p0
.end method
