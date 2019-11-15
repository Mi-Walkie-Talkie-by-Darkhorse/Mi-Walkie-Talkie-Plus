.class public final enum Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
.super Ljava/lang/Enum;
.source "AsyncOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/async/AsyncOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum b:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum c:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum d:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum e:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum f:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum g:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum h:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum i:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum j:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum k:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum l:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum m:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum n:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum o:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum p:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum q:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum r:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum s:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum t:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum u:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field public static final enum v:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

.field private static final synthetic w:[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Insert"

    invoke-direct {v0, v1, v3}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->a:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertInTxIterable"

    invoke-direct {v0, v1, v4}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->b:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertInTxArray"

    invoke-direct {v0, v1, v5}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->c:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplace"

    invoke-direct {v0, v1, v6}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->d:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplaceInTxIterable"

    invoke-direct {v0, v1, v7}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->e:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "InsertOrReplaceInTxArray"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->f:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Update"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->g:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "UpdateInTxIterable"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->h:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "UpdateInTxArray"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->i:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Delete"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->j:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteInTxIterable"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->k:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteInTxArray"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->l:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteByKey"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->m:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "DeleteAll"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->n:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "TransactionRunnable"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->o:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "TransactionCallable"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->p:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "QueryList"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->q:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "QueryUnique"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->r:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Load"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->s:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "LoadAll"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->t:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Count"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->u:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    new-instance v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const-string v1, "Refresh"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->v:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    const/16 v0, 0x16

    new-array v0, v0, [Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->a:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->b:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->c:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->d:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->e:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->f:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->g:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->h:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->i:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->j:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->k:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->l:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->m:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->n:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->o:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->p:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->q:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->r:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->s:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->t:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->u:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->v:Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->w:[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .locals 1

    const-class v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    return-object v0
.end method

.method public static values()[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;
    .locals 1

    sget-object v0, Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->w:[Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    invoke-virtual {v0}, [Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/greenrobot/greendao/async/AsyncOperation$OperationType;

    return-object v0
.end method
