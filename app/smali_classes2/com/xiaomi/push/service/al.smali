.class synthetic Lcom/xiaomi/push/service/al;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/xmpush/thrift/h;->values()[Lcom/xiaomi/xmpush/thrift/h;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/push/service/al;->b:[I

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/al;->b:[I

    sget-object v1, Lcom/xiaomi/xmpush/thrift/h;->a:Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/h;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/push/service/al;->b:[I

    sget-object v1, Lcom/xiaomi/xmpush/thrift/h;->b:Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/h;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/xiaomi/push/service/al;->b:[I

    sget-object v1, Lcom/xiaomi/xmpush/thrift/h;->c:Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/h;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v0, Lcom/xiaomi/push/service/al;->b:[I

    sget-object v1, Lcom/xiaomi/xmpush/thrift/h;->d:Lcom/xiaomi/xmpush/thrift/h;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/h;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    invoke-static {}, Lcom/xiaomi/xmpush/thrift/g;->values()[Lcom/xiaomi/xmpush/thrift/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaomi/push/service/al;->a:[I

    :try_start_4
    sget-object v0, Lcom/xiaomi/push/service/al;->a:[I

    sget-object v1, Lcom/xiaomi/xmpush/thrift/g;->a:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/xiaomi/push/service/al;->a:[I

    sget-object v1, Lcom/xiaomi/xmpush/thrift/g;->b:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
