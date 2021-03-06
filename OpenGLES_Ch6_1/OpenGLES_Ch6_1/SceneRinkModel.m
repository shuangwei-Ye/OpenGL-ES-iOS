//
//  SceneRinkModel.m
//  OpenGLES_Ch6_1
//
//  Created by frank.zhang on 2019/2/12.
//  Copyright © 2019 Frank.zhang. All rights reserved.
//

#import "SceneRinkModel.h"
#import "SceneMesh.h"
#import "bumperRink.h"
#import "AGLKVertexAttribArrayBuffer.h"

@implementation SceneRinkModel
- (id)init
{
    SceneMesh *rinkMesh = [[SceneMesh alloc]
                           initWithPositionCoords:bumperRinkVerts
                           normalCoords:bumperRinkNormals
                           texCoords0:NULL
                           numberOfPositions:bumperRinkNumVerts
                           indices:NULL
                           numberOfIndices:0];
    if(nil != (self = [super initWithName:@"bumberRink"
                                     mesh:rinkMesh
                         numberOfVertices:bumperRinkNumVerts]))
    {
        [self updateAlignedBoundingBoxForVertices:bumperRinkVerts
                                            count:bumperRinkNumVerts];
    }
    return self;
}
@end
