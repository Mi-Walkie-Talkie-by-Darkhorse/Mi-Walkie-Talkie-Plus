.class public Lcom/autonavi/ae/search/model/GPOICATEGORY;
.super Ljava/lang/Object;
.source "GPOICATEGORY.java"


# instance fields
.field bSubCategoryExist:I

.field nCategoryIDNum:I

.field nCategoryIndex:I

.field pnCategoryID:[I

.field szName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/autonavi/ae/search/model/GPOICATEGORY;->nCategoryIDNum:I

    .line 3
    iput-object p2, p0, Lcom/autonavi/ae/search/model/GPOICATEGORY;->pnCategoryID:[I

    .line 4
    iput p3, p0, Lcom/autonavi/ae/search/model/GPOICATEGORY;->nCategoryIndex:I

    .line 5
    iput p4, p0, Lcom/autonavi/ae/search/model/GPOICATEGORY;->bSubCategoryExist:I

    .line 6
    iput-object p5, p0, Lcom/autonavi/ae/search/model/GPOICATEGORY;->szName:Ljava/lang/String;

    return-void
.end method
