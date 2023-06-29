function projectionVector = proj_vec(vector1, vector2)
projectionVector = (dot(vector1, vector2)/dot(vector1, vector1))*vector1;