.class final enum Lcom/huawei/hms/scankit/p/jb$a;
.super Ljava/lang/Enum;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/scankit/p/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/huawei/hms/scankit/p/jb$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum b:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum c:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum d:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum e:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum f:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum g:Lcom/huawei/hms/scankit/p/jb$a;

.field public static final enum h:Lcom/huawei/hms/scankit/p/jb$a;

.field private static final synthetic i:[Lcom/huawei/hms/scankit/p/jb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v1, "PAD_ENCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/hms/scankit/p/jb$a;->a:Lcom/huawei/hms/scankit/p/jb$a;

    .line 2
    new-instance v1, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v3, "ASCII_ENCODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/huawei/hms/scankit/p/jb$a;->b:Lcom/huawei/hms/scankit/p/jb$a;

    .line 3
    new-instance v3, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v5, "C40_ENCODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/huawei/hms/scankit/p/jb$a;->c:Lcom/huawei/hms/scankit/p/jb$a;

    .line 4
    new-instance v5, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v7, "TEXT_ENCODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/huawei/hms/scankit/p/jb$a;->d:Lcom/huawei/hms/scankit/p/jb$a;

    .line 5
    new-instance v7, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v9, "ANSIX12_ENCODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/huawei/hms/scankit/p/jb$a;->e:Lcom/huawei/hms/scankit/p/jb$a;

    .line 6
    new-instance v9, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v11, "EDIFACT_ENCODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/huawei/hms/scankit/p/jb$a;->f:Lcom/huawei/hms/scankit/p/jb$a;

    .line 7
    new-instance v11, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v13, "BASE256_ENCODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/huawei/hms/scankit/p/jb$a;->g:Lcom/huawei/hms/scankit/p/jb$a;

    .line 8
    new-instance v13, Lcom/huawei/hms/scankit/p/jb$a;

    const-string v15, "UPPER_ENCODE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/huawei/hms/scankit/p/jb$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/huawei/hms/scankit/p/jb$a;->h:Lcom/huawei/hms/scankit/p/jb$a;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/huawei/hms/scankit/p/jb$a;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Lcom/huawei/hms/scankit/p/jb$a;->i:[Lcom/huawei/hms/scankit/p/jb$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/hms/scankit/p/jb$a;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/scankit/p/jb$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/huawei/hms/scankit/p/jb$a;

    return-object p0
.end method

.method public static values()[Lcom/huawei/hms/scankit/p/jb$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/scankit/p/jb$a;->i:[Lcom/huawei/hms/scankit/p/jb$a;

    invoke-virtual {v0}, [Lcom/huawei/hms/scankit/p/jb$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/hms/scankit/p/jb$a;

    return-object v0
.end method
