.class public final enum Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

.field public static final enum b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

.field public static final enum c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

.field public static final enum d:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

.field public static final enum e:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

.field private static final synthetic f:[Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    const/4 v1, 0x0

    const-string v2, "TEXT"

    invoke-direct {v0, v2, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    const/4 v2, 0x1

    const-string v3, "DRAWABLE"

    invoke-direct {v0, v3, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    const/4 v3, 0x2

    const-string v4, "SPECIAL_BOUNDS_DRAWABLE"

    invoke-direct {v0, v4, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    const/4 v4, 0x3

    const-string v5, "SPAN"

    invoke-direct {v0, v5, v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->d:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    const/4 v5, 0x4

    const-string v6, "NEXTLINE"

    invoke-direct {v0, v6, v5}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->e:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    sget-object v7, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->d:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->f:[Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;
    .locals 1

    const-class v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    return-object p0
.end method

.method public static values()[Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;
    .locals 1

    sget-object v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->f:[Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    invoke-virtual {v0}, [Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    return-object v0
.end method
